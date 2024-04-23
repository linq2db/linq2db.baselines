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

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	SmallIntValue = toInt16(toDecimal128(toFloat64(MoneyValue) / toFloat64(toDecimal128(toFloat64(toDecimal128('13621', 10)) / IntValue, toUInt8(10))), toUInt8(10)))
WHERE
	ID = 100500

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.SmallIntValue
FROM
	LinqDataTypes _
WHERE
	_.ID = 100500
LIMIT 1

