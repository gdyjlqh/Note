## 1. 新增分区 ##
分区 RANGE为整数，RANGE内只支持部分方法，UNIX_TIMESTAMP

 ``` java
ALTER TABLE test_01 PARTITION by RANGE(UNIX_TIMESTAMP(partition_timestamp))
(
  PARTITION p20180905 VALUES LESS THAN (UNIX_TIMESTAMP('2018-09-06')),
  PARTITION p20180906 VALUES LESS THAN (UNIX_TIMESTAMP('2018-09-07')),
  PARTITION p20180907 VALUES LESS THAN (UNIX_TIMESTAMP('2018-09-08')),
  PARTITION p20180908 VALUES LESS THAN (UNIX_TIMESTAMP('2018-09-09'))
)
```

## 2. 创建、删除分区存储过程 ##

``` sql
/**
  v_tablename
  v_drop_interval
  v_add_interval
*/
DELIMITER $$
use test$$
CREATE PROCEDURE `proc_add_drop_partition`(IN v_tablename VARCHAR(50),v_drop_interval INT,v_add_interval INT)
BEGIN
    DECLARE v_add_interval_1 INT;
    SET v_add_interval_1=v_add_interval+1;
    START TRANSACTION;
    SET @s=CONCAT('alter table ',v_tablename,' drop partition ', CONCAT(v_tablename,'_p',DATE_FORMAT(DATE_SUB(now(),INTERVAL v_drop_interval DAY),'%Y%m%d')));
    SET @t=CONCAT('alter table ',v_tablename,' add partition ','(','partition ', CONCAT(v_tablename,'_p',DATE_FORMAT(DATE_ADD(NOW(),INTERVAL v_add_interval DAY),'%Y%m%d')), ' VALUES LESS THAN','(',UNIX_TIMESTAMP(DATE(DATE_ADD(NOW(),INTERVAL v_add_interval_1 DAY))),')',')');
    SELECT @s;
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    SELECT @t;
    PREPARE stmt FROM @t;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    COMMIT;
END$$
DELIMITER ;
```

**DELIMITER**：分隔符，默认**<font color=#ff0000>;**分号；这里设置为 **<font color=#ff0000>$$**,最后还原回分号

查询存储过程：
``` sql
select `name` from mysql.proc where db = 'your_db_name' and `type` = 'PROCEDURE'
或
show procedure status
```

## 3. 定时任务 ##
定时任务默认不开启的，开启：
``` sql
SET GLOBAL event_scheduler=on
```

``` sql
DELIMITER $$
use test $$
CREATE DEFINER=`root`@`localhost`
EVENT `NewEvent`
ON SCHEDULE EVERY 1 DAY STARTS '2018-09-08 00:36:00'
ON COMPLETION PRESERVE
ENABLE
DO
BEGIN
        CALL proc_add_drop_partition('test_01',1,3);
END$$
DELIMITER ;
```
查看EVENT
``` sql
SELECT * FROM INFORMATION_SCHEMA.EVENTS
```




``` sql
/**

*/
DELIMITER $$
$$
CREATE PROCEDURE `proc_02`(IN v_tablename VARCHAR(50),IN v_interval INT,OUT status INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR 1507
    SET status=-1;

    WHILE i<v_interval
    DO
        SET i=i+1;
        set @a=CONCAT(v_tablename,'_p',DATE_FORMAT(DATE_SUB(now(),INTERVAL i DAY),'%Y%m%d'));
        set @b=CONCAT('alter table ',v_tablename,' drop partition ', @a);
        select @b;
        PREPARE stmt FROM @b;
        EXECUTE stmt;
    END WHILE;
    COMMIT;
END$$
DELIMITER ;

```

``` sql
drop table test_01;
CREATE TABLE `test_01` (
  `id` int(11) DEFAULT '0',
  `record_date` varchar(20) NOT NULL,
  `partition_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB PARTITION BY RANGE (UNIX_TIMESTAMP(partition_timestamp))
(PARTITION test_01_p20180905 VALUES LESS THAN (1536163200) ENGINE = InnoDB,
 PARTITION test_01_p20180906 VALUES LESS THAN (1536249600) ENGINE = InnoDB,
 PARTITION test_01_p20180907 VALUES LESS THAN (1536336000) ENGINE = InnoDB,
 PARTITION test_01_p20180908 VALUES LESS THAN (1536422400) ENGINE = InnoDB)
 ```
