BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
UPDATE
	MoneyValue = toDecimal128('1.1100', 10),
	DateTimeValue = toDateTime64('2001-01-11 01:11:21.100', 3),
	DateTimeValue2 = toDateTime64('2010-12-14 05:00:07.4250141', 7),
	BoolValue = true,
	GuidValue = toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),
	SmallIntValue = toInt16(1),
	IntValue = NULL,
	BigIntValue = toInt64(1),
	StringValue = NULL
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
UPDATE
	DateTimeValue2 = NULL
WHERE
	ID = 1

