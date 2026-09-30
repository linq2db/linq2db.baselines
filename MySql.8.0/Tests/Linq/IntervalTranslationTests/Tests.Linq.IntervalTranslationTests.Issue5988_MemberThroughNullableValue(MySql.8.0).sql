-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 864000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 36000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-09-30') * 10 AS DOUBLE) / 864000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 36000000000
FROM
	`Issue5777Row` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

