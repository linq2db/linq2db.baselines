-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

UPDATE
	`MeasuredPeriodRow` `r`
SET
	`r`.`Elapsed` = CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 864000000000
WHERE
	`r`.`Id` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`ClosedOn`,
	`t1`.`Elapsed`
FROM
	`MeasuredPeriodRow` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`MeasuredPeriodRow` `r`
WHERE
	`r`.`Elapsed` < CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 36000000000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

UPDATE
	`MeasuredPeriodRow` `r`
SET
	`r`.`Elapsed` = CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000
WHERE
	`r`.`Id` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`ClosedOn`,
	`t1`.`Elapsed`
FROM
	`MeasuredPeriodRow` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`MeasuredPeriodRow` `r`
WHERE
	`r`.`Elapsed` < CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000

