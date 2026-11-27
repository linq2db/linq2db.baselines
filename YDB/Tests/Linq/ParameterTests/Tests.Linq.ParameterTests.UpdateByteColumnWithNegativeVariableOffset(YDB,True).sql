-- YDB Ydb
UPDATE
	ByteFieldUpdateTable
SET
	Field = Unwrap(CAST(Unwrap(CAST(ByteFieldUpdateTable.Field AS Int32)) + -1 AS Uint8))

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Field as Field
FROM
	ByteFieldUpdateTable t1
LIMIT 2

