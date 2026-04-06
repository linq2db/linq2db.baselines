-- DuckDB
DECLARE $BinaryValue Binary(5)
SET     $BinaryValue = '\x01\x02\x03\x04\x05'::BLOB

UPDATE
	LinqDataTypes
SET
	BinaryValue = CAST($BinaryValue AS BLOB)
WHERE
	LinqDataTypes.ID = 1

-- DuckDB

SELECT
	Octet_Length(t.BinaryValue)
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

-- DuckDB
DECLARE $BinaryValue  -- Object
SET     $BinaryValue = NULL

UPDATE
	LinqDataTypes
SET
	BinaryValue = CAST($BinaryValue AS BLOB)
WHERE
	LinqDataTypes.ID = 1

