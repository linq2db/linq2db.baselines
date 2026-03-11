-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	101,
	toInt64(12)
)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = 101 AND BigIntValue = toInt64(12)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

