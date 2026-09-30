-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000 < 12

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 600000000,
	CAST((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`Issue5777Row` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

