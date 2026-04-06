-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = CAST($value AS BOOLEAN)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = CAST($value AS BOOLEAN)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> CAST($value AS BOOLEAN) OR t."Value" IS NULL

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> CAST($value AS BOOLEAN)

