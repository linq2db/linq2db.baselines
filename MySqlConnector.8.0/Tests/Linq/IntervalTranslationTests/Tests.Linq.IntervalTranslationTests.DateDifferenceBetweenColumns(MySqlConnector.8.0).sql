-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000 < 12

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 600000000,
	CAST((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`ClosedPeriodRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

