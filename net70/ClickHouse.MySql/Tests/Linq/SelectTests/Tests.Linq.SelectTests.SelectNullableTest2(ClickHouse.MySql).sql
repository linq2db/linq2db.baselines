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
-- ClickHouse.MySql ClickHouse

SELECT
	_.ID,
	_.MoneyValue,
	_.DateTimeValue,
	_.BoolValue,
	_.GuidValue,
	_.BinaryValue,
	_.SmallIntValue,
	_.StringValue
FROM
	LinqDataTypes _
WHERE
	_.ID = toInt32(1000)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = toInt32(1000)

