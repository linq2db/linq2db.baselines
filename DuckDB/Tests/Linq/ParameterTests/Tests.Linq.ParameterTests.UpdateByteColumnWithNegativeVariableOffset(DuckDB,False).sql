-- DuckDB
DECLARE $offset INTEGER -- Int32
SET     $offset = -1

UPDATE
	ByteFieldUpdateTable
SET
	Field = CAST(CAST(ByteFieldUpdateTable.Field AS INTEGER) + $offset AS UTINYINT)

-- DuckDB
SELECT
	t1.Id,
	t1.Field
FROM
	ByteFieldUpdateTable t1
LIMIT 2

