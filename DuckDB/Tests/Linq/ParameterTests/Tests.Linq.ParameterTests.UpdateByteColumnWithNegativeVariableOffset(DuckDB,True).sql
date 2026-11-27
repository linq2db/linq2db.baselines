-- DuckDB
UPDATE
	ByteFieldUpdateTable
SET
	Field = CAST(CAST(ByteFieldUpdateTable.Field AS INTEGER) + -1 AS UTINYINT)

-- DuckDB
SELECT
	t1.Id,
	t1.Field
FROM
	ByteFieldUpdateTable t1
LIMIT 2

