-- YDB Ydb

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.BinaryValue as BinaryValue,
	t.SmallIntValue as SmallIntValue,
	t.StringValue as StringValue
FROM
	LinqDataTypes t
WHERE
	t.MoneyValue * t.ID = Decimal('1.11', 6, 2)
LIMIT 2

