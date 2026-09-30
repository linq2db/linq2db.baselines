-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 36000000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 600000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST((TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10) DIV 864000000000 AS SIGNED) > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-09-30') * 10 AS DOUBLE) / 864000000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000
FROM
	`Issue5777Row` `r`
ORDER BY
	`r`.`Id`

