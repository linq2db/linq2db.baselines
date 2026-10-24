-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
WITH `CTE_1` (`Id`, `Taken`, `Budget`)
AS
(
	SELECT
		`r`.`Id`,
		TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10,
		`r`.`Budget`
	FROM
		`BudgetedTaskRow` `r`
)
SELECT
	`t1`.`Id`,
	`t1`.`Taken`,
	`t1`.`Budget`
FROM
	`CTE_1` `t1`
ORDER BY
	`t1`.`Id`
LIMIT 2

