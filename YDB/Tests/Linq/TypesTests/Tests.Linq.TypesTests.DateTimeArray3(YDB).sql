-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2001-01-11T01:11:21.100000Z')

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
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
	t.DateTimeValue IN ($Ids0_1)

