-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_1`.`Id`,
	Coalesce(GROUP_CONCAT(DISTINCT `g_1`.`NullableValue` ORDER BY `g_1`.`NullableValue`, `g_1`.`Id` SEPARATOR ', '), ''),
	GROUP_CONCAT(DISTINCT Coalesce(`g_1`.`NullableValue`, '') ORDER BY Coalesce(`g_1`.`NullableValue`, '') SEPARATOR ', ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`
ORDER BY
	`g_1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`NullableValue`,
	`t1`.`NotNullableValue`,
	`t1`.`VarcharValue`,
	`t1`.`NVarcharValue`
FROM
	`SampleClass` `t1`

