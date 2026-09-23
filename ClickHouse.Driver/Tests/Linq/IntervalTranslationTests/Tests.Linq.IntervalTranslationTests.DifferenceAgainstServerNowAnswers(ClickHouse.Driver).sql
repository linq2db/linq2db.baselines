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
	toDateTime64('2025-06-01 10:00:00.0000000', 7),
	toDateTime64('2025-06-01 10:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	EventRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(1)

