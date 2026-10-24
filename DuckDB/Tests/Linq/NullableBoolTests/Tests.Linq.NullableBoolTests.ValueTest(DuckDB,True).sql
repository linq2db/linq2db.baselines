-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = $value

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = $value

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> $value OR t."Value" IS NULL

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> $value

