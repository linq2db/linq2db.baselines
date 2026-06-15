-- YDB Ydb
DECLARE $BinaryValue Bytes(5) -- Binary
SET     $BinaryValue = '\x01\x02\x03\x04\x05's
DECLARE $p Int32
SET     $p = 1

UPDATE
	LinqDataTypes
SET
	BinaryValue = $BinaryValue
WHERE
	LinqDataTypes.ID = $p

-- YDB Ydb
DECLARE $BinaryValue Bytes(5) -- Binary
SET     $BinaryValue = '\x05\x04\x03\x02\x01's
DECLARE $p Int32
SET     $p = 2

UPDATE
	LinqDataTypes
SET
	BinaryValue = $BinaryValue
WHERE
	LinqDataTypes.ID = $p

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

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
	t.ID IN ($Ids0_1, $Ids0_2)

