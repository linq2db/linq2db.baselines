-- ClickHouse.MySql ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-06-01 10:00:00.0000000', 7),
	toDateTime64('2026-06-01 15:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.FinishedOn), 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	EventRow r
LIMIT 2

