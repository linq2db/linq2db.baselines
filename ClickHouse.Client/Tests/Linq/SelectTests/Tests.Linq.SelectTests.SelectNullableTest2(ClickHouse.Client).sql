﻿BeforeExecute
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
	1000,
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
	_.BoolValue,
	_.GuidValue,
	_.BinaryValue,
	_.SmallIntValue,
	_.StringValue
FROM
	LinqDataTypes _
WHERE
	_.ID = 1000
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = 1000

