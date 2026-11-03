-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u
DECLARE $search Text(1) -- String
SET     $search = 'Ж'u

SELECT
	t.Id as Id,
	Unicode::ReplaceAll(t.VarCharColumn, 'A'u, Coalesce($suffix, ''u)) as Replaced,
	Unicode::ReplaceAll(t.VarCharColumn, 'A'u, Coalesce($suffix, ''u)) as Function_1,
	Unicode::ReplaceAll(t.VarCharColumn, $search, '-'u) as Searched
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

