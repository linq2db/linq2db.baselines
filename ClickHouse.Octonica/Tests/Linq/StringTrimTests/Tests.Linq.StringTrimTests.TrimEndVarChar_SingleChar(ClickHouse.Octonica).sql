-- ClickHouse.Octonica ClickHouse

SELECT
	trim(TRAILING '.' FROM (concat(Coalesce(t.VarCharColumn, ''), '...')))
FROM
	StringTrimTable t

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTrimTable t1

