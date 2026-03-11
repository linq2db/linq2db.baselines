-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`NullableValue` ORDER BY `t1`.`NotNullableValue` SEPARATOR ', '), '')
FROM
	`SampleClass` `t1`

