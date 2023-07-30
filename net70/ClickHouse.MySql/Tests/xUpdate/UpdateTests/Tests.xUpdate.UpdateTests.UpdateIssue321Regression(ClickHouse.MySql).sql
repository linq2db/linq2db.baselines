BeforeExecute
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
	toInt32(100500),
	toDecimal128('3000', 10),
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	toInt32(60),
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	SmallIntValue = toInt16(MoneyValue / (toInt32(13621) / IntValue))
WHERE
	ID = toInt32(100500)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.SmallIntValue
FROM
	LinqDataTypes _
WHERE
	_.ID = toInt32(100500)
LIMIT toInt32(1)

