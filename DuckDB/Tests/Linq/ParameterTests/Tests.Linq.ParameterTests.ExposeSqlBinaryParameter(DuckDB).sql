-- DuckDB
DECLARE $p Binary(3)
SET     $p = '\x00\x01\x02'::BLOB

SELECT
	t.DecimalDataType,
	t.BinaryDataType,
	t.VarBinaryDataType,
	t.VarcharDataType
FROM
	AllTypes t
WHERE
	t.BinaryDataType = CAST($p AS BLOB)

