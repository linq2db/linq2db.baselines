-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1001
DECLARE $MoneyValue Decimal(1, 0)
SET     $MoneyValue = 0
DECLARE $DateTimeValue  -- DateTime2
SET     $DateTimeValue = NULL
DECLARE $BoolValue  -- Boolean
SET     $BoolValue = True
DECLARE $GuidValue  -- Guid
SET     $GuidValue = '00000000-0000-0000-0000-000000000000'::UUID
DECLARE $BinaryValue Binary(4)
SET     $BinaryValue = '\x01\x02\x03\x04'::BLOB
DECLARE $SmallIntValue  -- Int16
SET     $SmallIntValue = 0

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

-- DuckDB

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001
LIMIT 2

-- DuckDB

DELETE FROM
	LinqDataTypes t
WHERE
	t.ID > 1000

