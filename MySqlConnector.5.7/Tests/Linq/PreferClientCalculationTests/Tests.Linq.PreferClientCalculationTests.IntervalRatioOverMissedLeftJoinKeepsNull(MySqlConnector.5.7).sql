-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `e`.`Date`, `e`.`Date2`) * 10 AS DECIMAL(29, 10)) / CAST(TimestampDiff(Microsecond, `j`.`Date`, `j`.`Date2`) * 10 AS DECIMAL(29, 10))
FROM
	`MissedDivisorEntity` `e`
		LEFT JOIN `MissedDivisorEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

