-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	GROUP_CONCAT(`t1`.`Value2` ORDER BY (`t1`.`Value1` IS NULL), `t1`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

