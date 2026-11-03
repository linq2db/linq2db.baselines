-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	t.Id as Id,
	CAST(Re2::Replace('\\s+$'u)(CAST(Unicode::ReplaceAll(t.CharColumn, 'A'u, Coalesce($suffix, ''u)) AS String?), '') AS Utf8?) as Replaced,
	CAST(Re2::Replace('\\s+$'u)(CAST(Unicode::ReplaceAll(t.CharColumn, 'A'u, 'Ж'u) AS String?), '') AS Utf8?) as Chars
FROM
	StringTypesTable t

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CharColumn as CharColumn,
	t1.NCharColumn as NCharColumn,
	t1.VarCharColumn as VarCharColumn,
	t1.NVarCharColumn as NVarCharColumn
FROM
	StringTypesTable t1

