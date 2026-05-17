-- DuckDB

SELECT
	CAST(t.Id AS VARCHAR)
FROM
	TableWithGuid t
LIMIT 1

-- DuckDB

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	CAST(t.Id AS VARCHAR) LIKE '%63d-0f%' ESCAPE '~'

-- DuckDB

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	CAST(t.Id AS VARCHAR) LIKE 'bc7b6%' ESCAPE '~'

-- DuckDB

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	CAST(t.Id AS VARCHAR) LIKE '%8f4-53%' ESCAPE '~'

-- DuckDB

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	Lower(CAST(t.Id AS VARCHAR)) LIKE '8f4-53%' ESCAPE '~'

