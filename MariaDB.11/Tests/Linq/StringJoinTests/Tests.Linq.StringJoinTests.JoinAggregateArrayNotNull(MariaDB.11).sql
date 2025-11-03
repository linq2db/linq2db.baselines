-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CONCAT_WS(', ', `t`.`NullableValue`, `t`.`NotNullableValue`, `t`.`VarcharValue`, `t`.`NVarcharValue`),
	(
		SELECT
			Coalesce(GROUP_CONCAT(DISTINCT `t1`.`item` ORDER BY `t1`.`item` SEPARATOR ', '), '')
		FROM
			(
				SELECT `t`.`NullableValue` AS `item`
				UNION ALL
				SELECT `t`.`NotNullableValue`
				UNION ALL
				SELECT `t`.`VarcharValue`
				UNION ALL
				SELECT `t`.`NVarcharValue`) `t1`
	)
FROM
	`SampleClass` `t`

