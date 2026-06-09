-- YDB Ydb
DECLARE $dt Timestamp -- DateTime2
SET     $dt = Timestamp('2020-02-29T17:54:55.123123Z')

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
	t.DateTimeValue = $dt

