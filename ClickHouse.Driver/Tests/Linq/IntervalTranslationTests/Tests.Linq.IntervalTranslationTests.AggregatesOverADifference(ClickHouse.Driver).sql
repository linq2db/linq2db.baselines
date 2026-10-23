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
			minOrNull(intDiv(toUnixTimestamp64Nano(toDateTime64(t2.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(t2.StartedOn, 7)), toInt64(100)))
		FROM
			BudgetedTaskRow t2
	),
	(
		SELECT
			maxOrNull(intDiv(toUnixTimestamp64Nano(toDateTime64(t3.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(t3.StartedOn, 7)), toInt64(100)))
		FROM
			BudgetedTaskRow t3
	),
	Coalesce((
		SELECT
			sumOrNull(toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(t4.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(t4.StartedOn, 7)), toInt64(100))) / toFloat64(600000000))
		FROM
			BudgetedTaskRow t4
	), toFloat64(0))
FROM
	BudgetedTaskRow t1
LIMIT 1

