-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	Replace(t.VarCharColumn, 'A', 'Ж'),
	Replace(t.VarCharColumn, 'A', 'Ж')
FROM
	StringTypesTable t

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTypesTable t1

