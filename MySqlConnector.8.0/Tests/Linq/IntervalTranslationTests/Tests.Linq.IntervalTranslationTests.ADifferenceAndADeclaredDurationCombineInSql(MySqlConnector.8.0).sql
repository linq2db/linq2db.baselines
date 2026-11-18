-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00'
DECLARE @Budget Int64
SET     @Budget = 10800

INSERT INTO `BudgetedTaskRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`,
	`Budget`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 + CAST(`r`.`Budget` + `r`.`Budget` AS SIGNED) * 10000000 AS SIGNED),
	CAST(CAST(`r`.`Budget` + `r`.`Budget` AS SIGNED) * 10000000 - TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS SIGNED),
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 + TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10,
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 - `r`.`Budget` * 10000000 AS SIGNED)
FROM
	`BudgetedTaskRow` `r`
LIMIT 2

