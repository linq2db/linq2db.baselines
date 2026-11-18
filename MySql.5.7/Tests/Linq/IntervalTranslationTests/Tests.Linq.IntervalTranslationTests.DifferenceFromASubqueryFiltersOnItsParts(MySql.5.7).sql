-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 15:00:00'

INSERT INTO `EventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00'

INSERT INTO `EventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`
FROM
	`EventRow` `x`
WHERE
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `x`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000 > 3

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`
FROM
	`EventRow` `x`
WHERE
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `x`.`FinishedOn`) * 10) DIV 36000000000) % 24 AS SIGNED) = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`
FROM
	`EventRow` `x`
ORDER BY
	TimestampDiff(Microsecond, `x`.`StartedOn`, `x`.`FinishedOn`) * 10 DESC

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	TimestampDiff(Microsecond, `x`.`StartedOn`, `x`.`FinishedOn`) * 10
FROM
	`EventRow` `x`
ORDER BY
	`x`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10
FROM
	`EventRow` `r`
ORDER BY
	`r`.`Id`

