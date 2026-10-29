-- DuckDB
DECLARE $value BOOLEAN -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = $value

-- DuckDB
DECLARE $value BOOLEAN -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = $value

-- DuckDB
DECLARE $value BOOLEAN -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> $value OR t."Value" IS NULL

-- DuckDB
DECLARE $value BOOLEAN -- Boolean
SET     $value = False

SELECT
	t.Id,
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> $value

