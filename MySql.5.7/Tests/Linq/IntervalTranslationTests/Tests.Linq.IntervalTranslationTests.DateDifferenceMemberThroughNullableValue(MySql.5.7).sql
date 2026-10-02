-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DECIMAL(29, 10)) / 864000000000 > 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DECIMAL(29, 10)) / 36000000000 > 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, @asOf) * 10 AS DECIMAL(29, 10)) / 864000000000 > 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DECIMAL(29, 10)) / 36000000000
FROM
	`ClosedPeriodRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10) DIV 864000000000 AS SIGNED) > 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10) DIV 36000000000) % 24 AS SIGNED) > 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`ClosedPeriodRow` `r`
ORDER BY
	`r`.`Id`

