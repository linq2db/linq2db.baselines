-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	1001,
	toDecimal64('100', 4),
	toInt16(200)
)

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	SmallIntValue = toInt16(MoneyValue),
	MoneyValue = toDecimal128(SmallIntValue, 10)
WHERE
	ID = 1001

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	SmallIntValue = toInt16(MoneyValue),
	MoneyValue = toDecimal128(SmallIntValue, 10)
WHERE
	ID = 1001

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

