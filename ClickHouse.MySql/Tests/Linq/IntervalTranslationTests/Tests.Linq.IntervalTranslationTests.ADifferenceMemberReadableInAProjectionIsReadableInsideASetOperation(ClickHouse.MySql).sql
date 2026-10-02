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
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 10:00:00.0064560', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10)) % toInt64(1000))
FROM
	EventRow r

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10)) % toInt64(1000)) as c1
FROM
	EventRow r
WHERE
	r.Id > 0
UNION ALL
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r_1.FinishedOn) - toUnixTimestamp64Nano(r_1.StartedOn), toInt64(100)), toInt64(10)) % toInt64(1000)) as c1
FROM
	EventRow r_1
WHERE
	r_1.Id <= 0

