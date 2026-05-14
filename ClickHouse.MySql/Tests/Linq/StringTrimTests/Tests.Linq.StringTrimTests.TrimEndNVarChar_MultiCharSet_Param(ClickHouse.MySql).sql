-- ClickHouse.MySql ClickHouse

SELECT
	trim(TRAILING '.+' FROM concat(t.NVarCharColumn, '...++'))
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

