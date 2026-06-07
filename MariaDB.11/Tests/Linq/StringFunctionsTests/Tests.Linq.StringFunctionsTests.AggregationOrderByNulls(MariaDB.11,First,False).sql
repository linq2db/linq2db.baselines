-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	GROUP_CONCAT(`t1`.`Value2` ORDER BY `t1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

