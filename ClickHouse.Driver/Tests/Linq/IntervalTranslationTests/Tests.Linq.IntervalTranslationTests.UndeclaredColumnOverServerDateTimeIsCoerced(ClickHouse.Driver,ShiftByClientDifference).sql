-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

-- ClickHouse.Driver ClickHouse
CREATE TABLE UndeclaredServerDateTimeRow (Id Int32, At DateTime) ENGINE = Memory

-- ClickHouse.Driver ClickHouse
INSERT INTO UndeclaredServerDateTimeRow VALUES (1, '2026-06-01 10:00:00')

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.At, 7) + toIntervalNanosecond(toInt64(500000000))
FROM
	UndeclaredServerDateTimeRow r

-- ClickHouse.Driver ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

