-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

-- ClickHouse.Driver ClickHouse
CREATE TABLE UndeclaredServerDateTimeRow (Id Int32, At DateTime) ENGINE = Memory

-- ClickHouse.Driver ClickHouse
INSERT INTO UndeclaredServerDateTimeRow VALUES (1, '2026-06-01 10:00:00')

-- ClickHouse.Driver ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(addHours(r.At, toFloat64(1)), 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(addHours(r.At, toFloat64(1))), 7))) / 100)
FROM
	UndeclaredServerDateTimeRow r

-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

