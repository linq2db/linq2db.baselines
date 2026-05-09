-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value"

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = True

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = False

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	NOT t."Value"

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = False

-- DuckDB

SELECT
	t.Id,
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = True

