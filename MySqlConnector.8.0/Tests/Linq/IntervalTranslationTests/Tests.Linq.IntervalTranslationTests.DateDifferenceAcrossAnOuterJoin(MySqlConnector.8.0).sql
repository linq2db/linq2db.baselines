-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DOUBLE) / 864000000000,
	CAST((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 864000000000 AS SIGNED)
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
ORDER BY
	`x`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DOUBLE) / 864000000000 > 1

