-- YDB Ydb
DECLARE $dash Text(1) -- AnsiString
SET     $dash = '-'u

SELECT
	a.Id as Id,
	b.Id as B_1
FROM
	StringTypesTable a
		CROSS JOIN StringTypesTable b
WHERE
	b.VarCharColumn = CAST(Re2::Replace('\\s+$'u)(CAST(Unicode::ReplaceAll(a.CharColumn, '?'u, Coalesce($dash, ''u)) AS String?), '') AS Utf8?) OR
	b.VarCharColumn IS NULL AND CAST(Re2::Replace('\\s+$'u)(CAST(Unicode::ReplaceAll(a.CharColumn, '?'u, Coalesce($dash, ''u)) AS String?), '') AS Utf8?) IS NULL

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CharColumn as CharColumn,
	t1.NCharColumn as NCharColumn,
	t1.VarCharColumn as VarCharColumn,
	t1.NVarCharColumn as NVarCharColumn
FROM
	StringTypesTable t1

