-- DuckDB

SELECT
	RTRIM(t.VarCharColumn, '.+')
FROM
	StringTrimTable t
ORDER BY
	t.Id

-- DuckDB

SELECT
	RTRIM(t.VarCharColumn, 'ab')
FROM
	StringTrimTable t
ORDER BY
	t.Id

