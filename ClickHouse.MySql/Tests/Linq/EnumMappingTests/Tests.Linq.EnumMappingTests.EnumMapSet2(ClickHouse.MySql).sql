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
	toInt64(11)
)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BigIntValue = toInt64(12)
WHERE
	ID = 101 AND BigIntValue = toInt64(11)

-- ClickHouse.MySql ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(12)
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

