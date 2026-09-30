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
	r.StartedOn
FROM
	BudgetedTaskRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)) + r.Budget * toInt64(10000000)) * toInt64(100)),
	r.StartedOn + toIntervalNanosecond(toInt64(toInt64(r.Budget + r.Budget) * toInt64(10000000) - intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) * toInt64(100)),
	r.StartedOn - toIntervalNanosecond(toInt64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)) + r.Budget * toInt64(10000000)) * toInt64(100))
FROM
	BudgetedTaskRow r
LIMIT 2

