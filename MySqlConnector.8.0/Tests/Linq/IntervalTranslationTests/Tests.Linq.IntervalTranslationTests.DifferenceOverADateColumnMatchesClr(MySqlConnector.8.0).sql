-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-06-12 10:00:00'
DECLARE @OpenedOn Datetime -- DateTime
SET     @OpenedOn = '2026-06-01'
DECLARE @ClosedOn Datetime -- DateTime
SET     @ClosedOn = '2026-06-12'

INSERT INTO `CoarseEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`,
	`OpenedOn`,
	`ClosedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`OpenedOn`,
	`r`.`ClosedOn`
FROM
	`CoarseEventRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10
FROM
	`CoarseEventRow` `r`
LIMIT 2

