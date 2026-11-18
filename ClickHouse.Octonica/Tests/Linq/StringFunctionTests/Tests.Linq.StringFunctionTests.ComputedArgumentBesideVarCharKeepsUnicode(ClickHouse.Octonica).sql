-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	Replace(t.VarCharColumn, 'A', 'Жук'),
	Replace(t.VarCharColumn, 'A', 'Жук'),
	Replace(t.VarCharColumn, 'Ж', '-')
FROM
	StringTypesTable t

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTypesTable t1

