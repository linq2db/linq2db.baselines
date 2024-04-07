BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	toInt32(1001),
	toDecimal64('1000', 4),
	toInt16(100)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	MoneyValue = toDecimal64('2000', 10),
	SmallIntValue = toInt32(200)
WHERE
	ID = toInt32(1001)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
	t.ID = toInt32(1001)
LIMIT toInt32(2)

