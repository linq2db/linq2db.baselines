BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.CharColumn,
	t.NCharColumn,
	t.VarCharColumn,
	t.NVarCharColumn
FROM
	StringTypesTable t
WHERE
	startsWith(t.CharColumn, 'some') AND
	startsWith(t.NCharColumn, 'some') AND
	startsWith(t.VarCharColumn, 'some') AND
	startsWith(t.NVarCharColumn, 'some')

