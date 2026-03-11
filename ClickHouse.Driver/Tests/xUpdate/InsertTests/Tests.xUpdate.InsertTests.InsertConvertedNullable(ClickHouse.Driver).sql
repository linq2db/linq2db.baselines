-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 1000

-- ClickHouse.Driver ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	1001,
	toInt64(600000000)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.BigIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 1000

