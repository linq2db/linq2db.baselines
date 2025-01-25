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

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	LinqDataTypes x
WHERE
	(x.DateTimeValue2 IN (toDateTime64('2009-09-24 09:19:29.0900000', 7)) OR x.DateTimeValue2 IS NULL)

