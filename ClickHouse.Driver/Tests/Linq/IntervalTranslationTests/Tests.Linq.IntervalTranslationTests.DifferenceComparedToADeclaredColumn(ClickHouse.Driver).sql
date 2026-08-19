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
	toDateTime64('2026-01-01 14:00:00.0000000', 7),
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
	3,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 13:00:00.0000000', 7),
	toInt64(10800)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BudgetedTaskRow r
WHERE
	intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) > r.Budget * toInt64(10000000)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BudgetedTaskRow r
WHERE
	intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) = r.Budget * toInt64(10000000)

