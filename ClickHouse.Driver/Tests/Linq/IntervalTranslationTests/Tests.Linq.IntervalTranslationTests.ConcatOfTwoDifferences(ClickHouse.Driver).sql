-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Source,
	t1.Duration
FROM
	(
		SELECT
			toInt32(1) as Source,
			intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) as Duration
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			toInt32(2) as Source,
			intDiv(toUnixTimestamp64Nano(r_1.FinishedOn) - toUnixTimestamp64Nano(r_1.StartedOn), toInt64(100)) as Duration
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

