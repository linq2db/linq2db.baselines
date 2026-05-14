-- DuckDB

SELECT
	LTRIM(t.VarCharColumn, '.+')
FROM
	StringTrimTable t
ORDER BY
	t.Id

-- DuckDB

SELECT
	LTRIM(t.VarCharColumn, 'ab')
FROM
	StringTrimTable t
ORDER BY
	t.Id

