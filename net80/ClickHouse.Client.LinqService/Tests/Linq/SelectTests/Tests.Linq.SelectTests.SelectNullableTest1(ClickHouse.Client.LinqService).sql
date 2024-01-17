BeforeExecute
-- ClickHouse.Client ClickHouse

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
	toInt32(1000),
	toDecimal128('0', 10),
	NULL,
	NULL,
	false,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ID,
	_.MoneyValue,
	_.DateTimeValue,
	_.DateTimeValue2,
	_.BoolValue,
	_.GuidValue,
	_.SmallIntValue,
	_.IntValue,
	_.BigIntValue,
	_.StringValue
FROM
	LinqDataTypes _
WHERE
	_.ID = toInt32(1000)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = toInt32(1000)

