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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 12:00:00'
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
DECLARE @Id Int32
SET     @Id = 3
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 13:00:00'
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
DECLARE @Ticks Int64
SET     @Ticks = 72000000000

SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 > @Ticks
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 > 72000000000
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 > 0
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 0

SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 > @Ticks
ORDER BY
	`r`.`Id`

