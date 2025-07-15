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
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.DateTimeValue2,
	t1.BoolValue,
	t1.GuidValue,
	t1.SmallIntValue,
	t1.IntValue,
	t1.BigIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	t1.ID = 1000
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID = 1000

