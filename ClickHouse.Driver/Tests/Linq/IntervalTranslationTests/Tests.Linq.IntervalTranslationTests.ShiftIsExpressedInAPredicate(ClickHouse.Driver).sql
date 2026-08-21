-- ClickHouse.Driver ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 15:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	EventRow r
WHERE
	toDateTime64('2026-03-01 00:00:00.0000000', 7) + toIntervalNanosecond(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) * toInt64(100)) > toDateTime64('2026-03-01 04:00:00.0000000', 7)

