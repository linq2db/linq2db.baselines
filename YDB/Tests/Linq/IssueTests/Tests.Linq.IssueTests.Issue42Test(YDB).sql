-- YDB Ydb

SELECT
	r.ID as ID,
	r.MoneyValue as MoneyValue,
	r.DateTimeValue as DateTimeValue,
	r.DateTimeValue2 as DateTimeValue2,
	r.BoolValue as BoolValue,
	r.GuidValue as GuidValue,
	r.SmallIntValue as SmallIntValue,
	r.IntValue as IntValue,
	r.BigIntValue as BigIntValue,
	r.StringValue as StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

-- YDB Ydb

SELECT
	r.ID as ID,
	r.MoneyValue as MoneyValue,
	r.DateTimeValue as DateTimeValue,
	r.DateTimeValue2 as DateTimeValue2,
	r.BoolValue as BoolValue,
	r.GuidValue as GuidValue,
	r.SmallIntValue as SmallIntValue,
	r.IntValue as IntValue,
	r.BigIntValue as BigIntValue,
	r.StringValue as StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

-- YDB Ydb
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('1.11', 22, 9)
DECLARE $DateTimeValue Timestamp -- DateTime2
SET     $DateTimeValue = Timestamp('2001-01-11T01:11:21.100000Z')
DECLARE $DateTimeValue2 Timestamp -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue Bool -- Boolean
SET     $BoolValue = false
DECLARE $GuidValue Uuid -- Guid
SET     $GuidValue = Uuid('ef129165-6ffe-4df9-bb6b-bb16e413c883')
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = 1s
DECLARE $IntValue Int32
SET     $IntValue = NULL
DECLARE $BigIntValue Int64
SET     $BigIntValue = 1l
DECLARE $StringValue Text -- String
SET     $StringValue = NULL
DECLARE $ID Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = $MoneyValue,
	DateTimeValue = $DateTimeValue,
	DateTimeValue2 = $DateTimeValue2,
	BoolValue = $BoolValue,
	GuidValue = $GuidValue,
	SmallIntValue = $SmallIntValue,
	IntValue = $IntValue,
	BigIntValue = $BigIntValue,
	StringValue = $StringValue
WHERE
	LinqDataTypes.ID = $ID

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1

SELECT
	r.ID as ID,
	r.MoneyValue as MoneyValue,
	r.DateTimeValue as DateTimeValue,
	r.DateTimeValue2 as DateTimeValue2,
	r.BoolValue as BoolValue,
	r.GuidValue as GuidValue,
	r.SmallIntValue as SmallIntValue,
	r.IntValue as IntValue,
	r.BigIntValue as BigIntValue,
	r.StringValue as StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = $ID
LIMIT 1

-- YDB Ydb
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('1.11', 22, 9)
DECLARE $DateTimeValue Timestamp -- DateTime2
SET     $DateTimeValue = Timestamp('2001-01-11T01:11:21.100000Z')
DECLARE $DateTimeValue2 Timestamp -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue Bool -- Boolean
SET     $BoolValue = true
DECLARE $GuidValue Uuid -- Guid
SET     $GuidValue = Uuid('ef129165-6ffe-4df9-bb6b-bb16e413c883')
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = 1s
DECLARE $IntValue Int32
SET     $IntValue = NULL
DECLARE $BigIntValue Int64
SET     $BigIntValue = 1l
DECLARE $StringValue Text -- String
SET     $StringValue = NULL
DECLARE $ID Int32
SET     $ID = 1

UPDATE
	LinqDataTypes
SET
	MoneyValue = $MoneyValue,
	DateTimeValue = $DateTimeValue,
	DateTimeValue2 = $DateTimeValue2,
	BoolValue = $BoolValue,
	GuidValue = $GuidValue,
	SmallIntValue = $SmallIntValue,
	IntValue = $IntValue,
	BigIntValue = $BigIntValue,
	StringValue = $StringValue
WHERE
	LinqDataTypes.ID = $ID

-- YDB Ydb

SELECT
	r.ID as ID,
	r.MoneyValue as MoneyValue,
	r.DateTimeValue as DateTimeValue,
	r.DateTimeValue2 as DateTimeValue2,
	r.BoolValue as BoolValue,
	r.GuidValue as GuidValue,
	r.SmallIntValue as SmallIntValue,
	r.IntValue as IntValue,
	r.BigIntValue as BigIntValue,
	r.StringValue as StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 1
LIMIT 1

