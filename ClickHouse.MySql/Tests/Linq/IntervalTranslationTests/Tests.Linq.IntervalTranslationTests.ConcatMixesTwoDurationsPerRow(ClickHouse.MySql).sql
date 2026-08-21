-- ClickHouse.MySql ClickHouse
INSERT INTO BudgetedTaskRow
(
	Id,
	StartedOn,
	FinishedOn,
	Budget
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 11:00:00.0000000', 7),
	toInt64(10800)
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Source,
	t1.First_1,
	t1.Second_1,
	t1.First_2,
	t1.Second_2
FROM
	(
		SELECT
			toInt32(1) as Source,
			r.Budget as First_1,
			intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) as Second_1,
			NULL as First_2,
			toInt64(NULL) as Second_2
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			toInt32(2) as Source,
			toInt64(NULL) as First_1,
			NULL as Second_1,
			intDiv(toUnixTimestamp64Nano(r_1.FinishedOn) - toUnixTimestamp64Nano(r_1.StartedOn), toInt64(100)) as First_2,
			r_1.Budget as Second_2
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

