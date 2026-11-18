-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

UPDATE
	`MeasuredPeriodRow` `r`
SET
	`r`.`Elapsed` = CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DECIMAL(29, 10)) / 864000000000
WHERE
	`r`.`Id` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`ClosedOn`,
	`t1`.`Elapsed`
FROM
	`MeasuredPeriodRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`MeasuredPeriodRow` `r`
WHERE
	`r`.`Elapsed` < CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DECIMAL(29, 10)) / 36000000000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

UPDATE
	`MeasuredPeriodRow` `r`
SET
	`r`.`Elapsed` = CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000
WHERE
	`r`.`Id` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`ClosedOn`,
	`t1`.`Elapsed`
FROM
	`MeasuredPeriodRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`MeasuredPeriodRow` `r`
WHERE
	`r`.`Elapsed` < CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000

