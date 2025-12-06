-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue,
	IntValue
)
VALUES
(
	101,
	toInt64(12),
	10
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.BigIntValue IS NOT NULL AND t1.IntValue IS NOT NULL,
	t1.BigIntValue,
	t1.IntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 101

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

