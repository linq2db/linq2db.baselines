-- YDB Ydb

SELECT
	r.ID as ID,
	r.MoneyValue as MoneyValue,
	r.DateTimeValue as DateTimeValue,
	r.BoolValue as BoolValue,
	r.GuidValue as GuidValue,
	r.BinaryValue as BinaryValue,
	r.SmallIntValue as SmallIntValue,
	r.StringValue as StringValue
FROM
	LinqDataTypes r
WHERE
	NOT r.BoolValue

