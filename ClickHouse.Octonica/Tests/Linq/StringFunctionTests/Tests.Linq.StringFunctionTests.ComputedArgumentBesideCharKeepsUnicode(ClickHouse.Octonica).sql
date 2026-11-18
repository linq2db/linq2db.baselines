-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	trimRight(Replace(t.CharColumn, 'A', 'Жук')),
	trimRight(Replace(t.CharColumn, 'A', 'Ж'))
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

