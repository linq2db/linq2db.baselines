-- YDB Ydb
SELECT
	t.Id as Id,
	Unicode::ReplaceAll(t.VarCharColumn, 'A'u, 'Ж'u) as Chars,
	Unicode::ReplaceAll(t.VarCharColumn, 'A'u, 'Ж'u) as FunctionChars
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

