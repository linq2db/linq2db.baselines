-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

-- ClickHouse.MySql ClickHouse
CREATE TABLE UndeclaredServerDateTimeRow (Id Int32, At DateTime) ENGINE = Memory

-- ClickHouse.MySql ClickHouse
INSERT INTO UndeclaredServerDateTimeRow VALUES (1, '2026-06-01 10:00:00')

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	UndeclaredServerDateTimeRow r
WHERE
	toDateTime64(r.At, 7) IN (toDateTime64('2026-06-01 10:00:00.0000000', 7), toDateTime64('2026-06-01 11:00:00.0000000', 7))

-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

