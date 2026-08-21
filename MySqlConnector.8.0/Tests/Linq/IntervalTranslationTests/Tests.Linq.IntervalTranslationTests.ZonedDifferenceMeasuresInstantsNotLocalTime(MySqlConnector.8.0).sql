-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTimeOffset
SET     @StartedOn = TIMESTAMP '2026-01-01 12:00:00.000000+00:00'
DECLARE @FinishedOn Datetime -- DateTimeOffset
SET     @FinishedOn = TIMESTAMP '2026-01-01 14:00:00.000000+02:00'

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTimeOffset
SET     @StartedOn = TIMESTAMP '2026-01-01 12:00:00.000000+02:00'
DECLARE @FinishedOn Datetime -- DateTimeOffset
SET     @FinishedOn = TIMESTAMP '2026-01-01 12:00:00.000000+00:00'

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`StartedOn`,
	`r`.`FinishedOn`
FROM
	`ZonedEventRow` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS DOUBLE) / 36000000000
FROM
	`ZonedEventRow` `r`
ORDER BY
	`r`.`Id`

