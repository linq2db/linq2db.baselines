-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 864000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000 > 0

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`ClosedPeriodRow` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 600000000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000
FROM
	`ClosedPeriodRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

