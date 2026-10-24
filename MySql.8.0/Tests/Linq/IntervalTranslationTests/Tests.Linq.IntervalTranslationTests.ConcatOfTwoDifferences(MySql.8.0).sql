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
SELECT
	`t1`.`Source`,
	`t1`.`Duration`
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `Source`,
			TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 as `Duration`
		FROM
			`BudgetedTaskRow` `r`
		UNION ALL
		SELECT
			CAST(2 AS SIGNED) as `Source`,
			TimestampDiff(Microsecond, `r_1`.`StartedOn`, `r_1`.`FinishedOn`) * 10 as `Duration`
		FROM
			`BudgetedTaskRow` `r_1`
	) `t1`
ORDER BY
	`t1`.`Source`

