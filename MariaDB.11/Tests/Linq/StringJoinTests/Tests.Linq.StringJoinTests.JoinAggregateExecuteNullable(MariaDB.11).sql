-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	GROUP_CONCAT(Coalesce(`t1`.`NullableValue`, '') ORDER BY `t1`.`NotNullableValue` SEPARATOR ', ')
FROM
	`SampleClass` `t1`

