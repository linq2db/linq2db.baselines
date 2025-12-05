-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

-- ClickHouse.Driver ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	true,
	'\x01\x02\x03\x04'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

