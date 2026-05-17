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
	t."Value" IS NOT NULL

