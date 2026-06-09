-- YDB Ydb

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
	t.ID = 1
LIMIT 1

-- YDB Ydb
DECLARE $dt Timestamp -- DateTime2
SET     $dt = Timestamp('2010-12-14T05:00:07.425014Z')

UPDATE
	LinqDataTypes
SET
	DateTimeValue = $dt
WHERE
	LinqDataTypes.ID = 1

-- YDB Ydb

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
	t.ID = 1
LIMIT 1

-- YDB Ydb
DECLARE $pdt Timestamp -- DateTime2
SET     $pdt = Timestamp('2001-01-11T01:11:21.100000Z')

UPDATE
	LinqDataTypes
SET
	DateTimeValue = $pdt
WHERE
	LinqDataTypes.ID = 1

