-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" IS NULL

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	1 = 0

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" IS NOT NULL

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t

