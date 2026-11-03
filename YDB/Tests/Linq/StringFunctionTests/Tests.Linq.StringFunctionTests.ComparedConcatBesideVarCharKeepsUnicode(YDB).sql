-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	t.Id as Id,
	CASE
		WHEN (Coalesce(t.VarCharColumn, ''u) || Coalesce($suffix, ''u)) > t.NVarCharColumn OR t.NVarCharColumn IS NULL
			THEN 1
		WHEN (Coalesce(t.VarCharColumn, ''u) || Coalesce($suffix, ''u)) = t.NVarCharColumn
			THEN 0
		ELSE -1
	END as Compared,
	CAST(Re2::Replace('\\s+$'u)(CAST((Coalesce(t.VarCharColumn, ''u) || Coalesce($suffix, ''u)) AS String?), '') AS Utf8?) as Trimmed
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

-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

SELECT
	t.Id as Id
FROM
	StringTypesTable t
WHERE
	(Coalesce(t.VarCharColumn, ''u) || Coalesce($suffix, ''u)) NOT LIKE '%?%'u
ORDER BY
	t.Id

