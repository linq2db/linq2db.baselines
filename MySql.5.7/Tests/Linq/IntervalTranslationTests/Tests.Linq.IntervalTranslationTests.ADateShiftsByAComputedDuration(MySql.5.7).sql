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
SELECT
	`r`.`StartedOn`
FROM
	`BudgetedTaskRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 + `r`.`Budget` * 10000000 AS SIGNED) DIV 10) Microsecond),
	Date_Add(`r`.`StartedOn`, Interval (CAST(CAST(`r`.`Budget` + `r`.`Budget` AS SIGNED) * 10000000 - TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS SIGNED) DIV 10) Microsecond),
	Date_Sub(`r`.`StartedOn`, Interval (CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 + `r`.`Budget` * 10000000 AS SIGNED) DIV 10) Microsecond)
FROM
	`BudgetedTaskRow` `r`
LIMIT 2

