BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	GROUP_CONCAT(`t`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

