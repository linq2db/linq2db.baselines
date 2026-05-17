-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
SELECT
	r.ID,
	toInt64(11)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(12)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	LinqDataTypes r
WHERE
	r.ID = 101 AND r.BigIntValue = toInt64(11)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

