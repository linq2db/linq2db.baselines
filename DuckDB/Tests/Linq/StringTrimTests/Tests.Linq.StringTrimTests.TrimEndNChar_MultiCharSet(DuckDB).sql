-- DuckDB

SELECT
	RTRIM(t.NCharColumn || '...++', '.+')
FROM
	StringTrimTable t

-- DuckDB

SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTrimTable t1

