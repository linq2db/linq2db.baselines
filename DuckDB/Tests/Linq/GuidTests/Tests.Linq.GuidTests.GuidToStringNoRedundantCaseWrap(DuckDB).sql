-- DuckDB

SELECT
	Lower(CAST(t.Id AS VARCHAR))
FROM
	TableWithGuid t

-- DuckDB

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(CAST(t.Id AS VARCHAR)) = 'x'

