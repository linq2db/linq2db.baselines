-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10 AS DOUBLE) / 864000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10 AS DOUBLE) / 36000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10 AS DOUBLE) / 600000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST((TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10) DIV 864000000000 AS SIGNED) > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-10-01') * 10 AS DOUBLE) / 864000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10 AS DOUBLE) / 864000000000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-10-01') * 10 AS DOUBLE) / 864000000000
FROM
	`Issue5777Row` `r`
ORDER BY
	`r`.`Id`

