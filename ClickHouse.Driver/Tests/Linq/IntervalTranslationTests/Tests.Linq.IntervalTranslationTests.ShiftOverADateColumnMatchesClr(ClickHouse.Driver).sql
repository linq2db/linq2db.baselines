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
	toDateTime('2026-06-12 10:00:00'),
	toDate32('2026-06-01'),
	toDate32('2026-06-12')
)

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64('2026-06-20 00:00:00.0000000', 7) + toIntervalNanosecond(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100)) * toInt64(100))
FROM
	CoarseEventRow r
LIMIT 2

