-- ClickHouse.MySql ClickHouse
SELECT
	a.Id,
	b.Id
FROM
	StringTypesTable a,
	StringTypesTable b
WHERE
	b.VarCharColumn = trimRight(Replace(a.CharColumn, '?', '-')) OR
	b.VarCharColumn IS NULL AND a.CharColumn IS NULL

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTypesTable t1

