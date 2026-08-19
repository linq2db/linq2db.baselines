-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTimeOffset
SET     @StartedOn = CONVERT_TZ('2026-01-01 12:00:00.000000', '+00:00', '+00:00')
DECLARE @FinishedOn Datetime -- DateTimeOffset
SET     @FinishedOn = CONVERT_TZ('2026-01-01 14:00:00.000000', '+02:00', '+00:00')

INSERT INTO `ZonedEventRow`
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
DECLARE @StartedOn Datetime -- DateTimeOffset
SET     @StartedOn = CONVERT_TZ('2026-01-01 12:00:00.000000', '+02:00', '+00:00')
DECLARE @FinishedOn Datetime -- DateTimeOffset
SET     @FinishedOn = CONVERT_TZ('2026-01-01 12:00:00.000000', '+00:00', '+00:00')

INSERT INTO `ZonedEventRow`
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
	`r`.`StartedOn`,
	`r`.`FinishedOn`
FROM
	`ZonedEventRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000
FROM
	`ZonedEventRow` `r`
ORDER BY
	`r`.`Id`

