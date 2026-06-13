-- YDB Ydb
DECLARE $Ids0_1 Int64
SET     $Ids0_1 = 2l

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
WHERE
	(t1.BigIntValue NOT IN ($Ids0_1) OR t1.BigIntValue IS NULL)

