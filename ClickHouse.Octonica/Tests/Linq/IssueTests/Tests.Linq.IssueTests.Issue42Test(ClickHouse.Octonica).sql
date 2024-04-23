BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	MoneyValue = toDecimal128('1.1100', 10),
	DateTimeValue = toDateTime64('2001-01-11 01:11:21.100', 3),
	DateTimeValue2 = NULL,
	BoolValue = false,
	GuidValue = toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),
	SmallIntValue = toInt16(1),
	IntValue = NULL,
	BigIntValue = toInt64(1),
	StringValue = NULL
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	MoneyValue = toDecimal128('1.1100', 10),
	DateTimeValue = toDateTime64('2001-01-11 01:11:21.100', 3),
	DateTimeValue2 = NULL,
	BoolValue = true,
	GuidValue = toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),
	SmallIntValue = toInt16(1),
	IntValue = NULL,
	BigIntValue = toInt64(1),
	StringValue = NULL
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ID,
	r.MoneyValue,
	r.DateTimeValue,
	r.DateTimeValue2,
	r.BoolValue,
	r.GuidValue,
	r.SmallIntValue,
	r.IntValue,
	r.BigIntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

