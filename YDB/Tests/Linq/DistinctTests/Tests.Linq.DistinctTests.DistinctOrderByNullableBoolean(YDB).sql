-- YDB Ydb
SELECT DISTINCT
	t.ID as ID,
	t.BoolValue as BoolValue
FROM
	LinqDataTypes t
ORDER BY
	BoolValue,
	ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.DateTimeValue2 as DateTimeValue2,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.SmallIntValue as SmallIntValue,
	t1.IntValue as IntValue,
	t1.BigIntValue as BigIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

