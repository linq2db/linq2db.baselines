-- ClickHouse.MySql ClickHouse

SELECT
	trimRight(concat(Coalesce(t.VarCharColumn, ''), '   '))
FROM
	StringTrimTable t

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTrimTable t1

