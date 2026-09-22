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
	toDateTime64('2026-09-20 22:34:49.9505914', 7),
	toDateTime64('2026-09-20 22:34:49.9505914', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	EventRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(1)

