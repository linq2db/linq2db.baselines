-- DuckDB
DECLARE $BinaryValue Binary(5)
SET     $BinaryValue = '\x01\x02\x03\x04\x05'::BLOB
DECLARE $p  -- Int32
SET     $p = 1

UPDATE
	LinqDataTypes
SET
	BinaryValue = CAST($BinaryValue AS BLOB)
WHERE
	LinqDataTypes.ID = CAST($p AS INTEGER)

-- DuckDB
DECLARE $BinaryValue Binary(5)
SET     $BinaryValue = '\x05\x04\x03\x02\x01'::BLOB
DECLARE $p  -- Int32
SET     $p = 2

UPDATE
	LinqDataTypes
SET
	BinaryValue = CAST($BinaryValue AS BLOB)
WHERE
	LinqDataTypes.ID = CAST($p AS INTEGER)

-- DuckDB

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID IN (1, 2)

