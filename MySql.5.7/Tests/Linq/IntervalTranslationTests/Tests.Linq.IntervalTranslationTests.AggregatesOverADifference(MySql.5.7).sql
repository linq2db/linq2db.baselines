-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(
		SELECT
			MIN(TimestampDiff(Microsecond, `t2`.`StartedOn`, `t2`.`FinishedOn`) * 10)
		FROM
			`BudgetedTaskRow` `t2`
	),
	(
		SELECT
			MAX(TimestampDiff(Microsecond, `t3`.`StartedOn`, `t3`.`FinishedOn`) * 10)
		FROM
			`BudgetedTaskRow` `t3`
	),
	Coalesce((
		SELECT
			SUM(CAST(TimestampDiff(Microsecond, `t4`.`StartedOn`, `t4`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 600000000)
		FROM
			`BudgetedTaskRow` `t4`
	), 0)
FROM
	`BudgetedTaskRow` `t1`
LIMIT 1

