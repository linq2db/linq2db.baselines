-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Source`,
	`t1`.`First_1`,
	`t1`.`Second_1`,
	`t1`.`First_2`,
	`t1`.`Second_2`
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `Source`,
			`r`.`Budget` as `First_1`,
			TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 as `Second_1`,
			NULL as `First_2`,
			CAST(NULL AS SIGNED) as `Second_2`
		FROM
			`BudgetedTaskRow` `r`
		UNION ALL
		SELECT
			CAST(2 AS SIGNED) as `Source`,
			CAST(NULL AS SIGNED) as `First_1`,
			NULL as `Second_1`,
			TimestampDiff(Microsecond, `r_1`.`StartedOn`, `r_1`.`FinishedOn`) * 10 as `First_2`,
			`r_1`.`Budget` as `Second_2`
		FROM
			`BudgetedTaskRow` `r_1`
	) `t1`
ORDER BY
	`t1`.`Source`

