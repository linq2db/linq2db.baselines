-- YDB Ydb
DECLARE $Date Timestamp -- DateTime2
SET     $Date = Timestamp('2009-09-20T00:00:00.000000Z')

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as Value_1,
	t.DateTimeValue2 as DateTimeValue2,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.SmallIntValue as SmallIntValue,
	t.IntValue as IntValue,
	t.BigIntValue as BigIntValue,
	t.StringValue as StringValue
FROM
	LinqDataTypes t
WHERE
	DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(t.DateTimeValue))) > $Date

