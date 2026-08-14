-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	Date_Add('2026-03-01', Interval ((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10) Microsecond) > '2026-03-01 04:00:00'

