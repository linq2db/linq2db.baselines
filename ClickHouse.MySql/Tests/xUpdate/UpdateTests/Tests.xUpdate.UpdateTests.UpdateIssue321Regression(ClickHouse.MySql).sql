-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	100500,
	toDecimal128('3000', 10),
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	60,
	NULL,
	NULL
)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	SmallIntValue = toInt16(toDecimal128(toFloat64(MoneyValue) / (toFloat64(toDecimal128('13621', 10)) / IntValue), 10))
WHERE
	ID = 100500

-- ClickHouse.MySql ClickHouse

SELECT
	t1.SmallIntValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 100500
LIMIT 1

