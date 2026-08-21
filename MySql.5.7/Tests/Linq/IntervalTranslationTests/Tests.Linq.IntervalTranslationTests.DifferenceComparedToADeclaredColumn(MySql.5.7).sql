-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 14:00:00'
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 > `r`.`Budget` * 10000000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`BudgetedTaskRow` `r`
WHERE
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 = `r`.`Budget` * 10000000

