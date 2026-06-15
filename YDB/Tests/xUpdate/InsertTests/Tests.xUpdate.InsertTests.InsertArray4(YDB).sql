-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1001
DECLARE $MoneyValue Decimal(6, 2)
SET     $MoneyValue = Decimal('0', 22, 9)
DECLARE $DateTimeValue Timestamp -- DateTime2
SET     $DateTimeValue = NULL
DECLARE $BoolValue Bool -- Boolean
SET     $BoolValue = true
DECLARE $GuidValue Uuid -- Guid
SET     $GuidValue = Uuid('00000000-0000-0000-0000-000000000000')
DECLARE $BinaryValue Bytes(4) -- Binary
SET     $BinaryValue = '\x01\x02\x03\x04's
DECLARE $SmallIntValue Int16
SET     $SmallIntValue = 0s

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue
)
VALUES
(
	$ID,
	$MoneyValue,
	$DateTimeValue,
	$BoolValue,
	$GuidValue,
	$BinaryValue,
	$SmallIntValue
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.MoneyValue as MoneyValue,
	t.DateTimeValue as DateTimeValue,
	t.BoolValue as BoolValue,
	t.GuidValue as GuidValue,
	t.BinaryValue as BinaryValue,
	t.SmallIntValue as SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

-- YDB Ydb

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

