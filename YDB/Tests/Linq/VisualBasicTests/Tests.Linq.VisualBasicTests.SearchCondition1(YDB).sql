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
	NOT t.BoolValue AND (t.SmallIntValue = 5s OR t.SmallIntValue = 7s OR BitCast((BitCast(Unwrap(CAST(t.SmallIntValue AS Int32)) AS Uint32) | BitCast(2s AS Uint32)) AS Int32) = 10)

