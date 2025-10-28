BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	GROUP_CONCAT(`t`.`Value4` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

