-- DuckDB
DECLARE $BinaryValue Binary(5)
SET     $BinaryValue = '\x01\x02\x03\x04\x05'::BLOB

UPDATE
	LinqDataTypes
SET
	BinaryValue = $BinaryValue
WHERE
	LinqDataTypes.ID = 1

-- DuckDB

SELECT
	t.BinaryValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1

