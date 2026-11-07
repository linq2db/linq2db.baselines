-- DuckDB
DECLARE $p Binary(3)
SET     $p = '\x00\x01\x02'::BLOB

SELECT
	t.decimalDataType,
	t.binaryDataType,
	t.varbinaryDataType,
	t.varcharDataType
FROM
	AllTypes t
WHERE
	t.binaryDataType = $p

