-- ClickHouse.Driver ClickHouse
INSERT INTO CoarseEventRow
(
	Id,
	StartedOn,
	FinishedOn,
	OpenedOn,
	ClosedOn
)
VALUES
(
	1,
	toDateTime('2026-06-01 10:00:00'),
	toDateTime('2026-06-01 15:04:03'),
	toDate32('2026-06-01'),
	toDate32('2026-06-01')
)

-- ClickHouse.Driver ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))
FROM
	CoarseEventRow r
LIMIT 2

