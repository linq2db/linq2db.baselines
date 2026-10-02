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
	toDateTime64('2045-06-05 04:03:02.0000000', 7),
	toDateTime64('1970-01-02 00:00:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(864000000000)
FROM
	EventRow r
LIMIT 2

