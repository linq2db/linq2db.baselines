-- YDB Ydb

UPDATE
	Issue4963Table
SET
	Field = Unwrap(CAST(Unwrap(CAST(Issue4963Table.Field AS Int32)) + -1 AS Uint8))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Field as Field
FROM
	Issue4963Table t1
LIMIT 2

