-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

-- ClickHouse.Octonica ClickHouse
CREATE TABLE UndeclaredServerDateTimeRow (Id Int32, At DateTime) ENGINE = Memory

-- ClickHouse.Octonica ClickHouse
INSERT INTO UndeclaredServerDateTimeRow VALUES (1, '2026-06-01 10:00:00')

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(r.At, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.At), 7))) / 100)
FROM
	UndeclaredServerDateTimeRow r

-- ClickHouse.Octonica ClickHouse
DROP TABLE IF EXISTS UndeclaredServerDateTimeRow

