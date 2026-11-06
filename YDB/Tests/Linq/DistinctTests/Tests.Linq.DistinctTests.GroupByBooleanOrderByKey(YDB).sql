-- YDB Ydb
SELECT
	g_1.BoolValue as BoolValue,
	COUNT(*) as Count_1
FROM
	LinqDataTypes g_1
GROUP BY
	g_1.BoolValue
ORDER BY
	BoolValue

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

