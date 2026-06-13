-- YDB Ydb

SELECT
	CAST(Re2::Replace('^[.+]+'u)(CAST(t.VarCharColumn AS String?), '') AS Utf8?) as c1
FROM
	StringTrimTable t

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.CharColumn as CharColumn,
	t1.NCharColumn as NCharColumn,
	t1.VarCharColumn as VarCharColumn,
	t1.NVarCharColumn as NVarCharColumn
FROM
	StringTrimTable t1

