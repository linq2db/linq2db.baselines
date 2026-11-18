-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

-- ClickHouse.MySql ClickHouse
CREATE TABLE UndeclaredServerDateTimeRow (Id Int32, At DateTime) ENGINE = Memory

-- ClickHouse.MySql ClickHouse
INSERT INTO UndeclaredServerDateTimeRow VALUES (1, '2026-06-01 10:00:00')

-- ClickHouse.MySql ClickHouse
SELECT
	toDateTime64(r.At, 7) + toIntervalNanosecond(toInt64(500000000))
FROM
	UndeclaredServerDateTimeRow r

-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

