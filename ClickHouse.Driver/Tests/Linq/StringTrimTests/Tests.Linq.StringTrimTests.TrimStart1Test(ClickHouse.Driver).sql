-- ClickHouse.Driver ClickHouse

SELECT
	trim(LEADING '.' FROM concat('...', t.VarCharColumn))
FROM
	StringTrimTable t

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTrimTable t1

