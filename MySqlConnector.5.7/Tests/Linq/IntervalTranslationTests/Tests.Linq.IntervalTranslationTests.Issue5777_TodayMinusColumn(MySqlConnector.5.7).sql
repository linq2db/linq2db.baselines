-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 864000000000 > 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 36000000000 > 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 600000000 > 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST((TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10) DIV 864000000000 AS SIGNED) > 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 864000000000 > 0

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 864000000000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DECIMAL(29, 10)) / 864000000000
FROM
	`Issue5777Row` `r`
ORDER BY
	`r`.`Id`

