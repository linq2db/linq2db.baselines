-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1000
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('0', 22, 9)
DECLARE $DateTimeValue Timestamp -- DateTime2
SET     $DateTimeValue = NULL
DECLARE $DateTimeValue2 Timestamp -- DateTime2
SET     $DateTimeValue2 = NULL
DECLARE $BoolValue Bool -- Boolean
SET     $BoolValue = false
DECLARE $GuidValue Uuid -- Guid
SET     $GuidValue = NULL
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = NULL
DECLARE $IntValue Int32
SET     $IntValue = NULL
DECLARE $BigIntValue Int64
SET     $BigIntValue = NULL
DECLARE $StringValue Text -- String
SET     $StringValue = NULL

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$DateTimeValue,
	$DateTimeValue2,
	$BoolValue,
	$GuidValue,
	$SmallIntValue,
	$IntValue,
	$BigIntValue,
	$StringValue
)

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
WHERE
	t1.ID = 1000
LIMIT 1

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID = 1000

