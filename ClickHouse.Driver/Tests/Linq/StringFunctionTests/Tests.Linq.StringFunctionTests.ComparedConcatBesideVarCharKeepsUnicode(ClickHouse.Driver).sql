-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	CASE
		WHEN (concat(Coalesce(t.VarCharColumn, ''), 'Жук')) > t.NVarCharColumn OR t.NVarCharColumn IS NULL
			THEN 1
		WHEN (concat(Coalesce(t.VarCharColumn, ''), 'Жук')) = t.NVarCharColumn
			THEN 0
		ELSE -1
	END,
	trimRight(concat(Coalesce(t.VarCharColumn, ''), 'Жук'))
FROM
	StringTypesTable t

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTypesTable t1

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id
FROM
	StringTypesTable t
WHERE
	(concat(Coalesce(t.VarCharColumn, ''), 'Жук')) LIKE t.NVarCharColumn

