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
	toDateTime64('2026-01-01 13:00:00.0000000', 7),
	toInt64(10800)
)

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
	2,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 11:00:00.0000000', 7),
	toInt64(10800)
)

-- ClickHouse.Driver ClickHouse
SELECT
	(
		SELECT
			minOrNull(intDiv(toUnixTimestamp64Nano(t2.FinishedOn) - toUnixTimestamp64Nano(t2.StartedOn), toInt64(100)))
		FROM
			BudgetedTaskRow t2
	),
	(
		SELECT
			maxOrNull(intDiv(toUnixTimestamp64Nano(t3.FinishedOn) - toUnixTimestamp64Nano(t3.StartedOn), toInt64(100)))
		FROM
			BudgetedTaskRow t3
	),
	Coalesce((
		SELECT
			sumOrNull(toFloat64(intDiv(toUnixTimestamp64Nano(t4.FinishedOn) - toUnixTimestamp64Nano(t4.StartedOn), toInt64(100))) / toFloat64(600000000))
		FROM
			BudgetedTaskRow t4
	), toFloat64(0))
FROM
	BudgetedTaskRow t1
LIMIT 1

