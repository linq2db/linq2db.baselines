-- ClickHouse.Octonica ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-09-21 13:48:15.8365676', 7),
	toDateTime64('2026-09-21 13:48:15.8365676', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	EventRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(1)

