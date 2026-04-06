-- DuckDB
DECLARE $value  -- Int32
SET     $value = 2

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" IS DISTINCT FROM CAST($value AS INTEGER)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 2

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS DISTINCT FROM CAST($value AS INTEGER)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 2

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" IS NOT DISTINCT FROM CAST($value AS INTEGER)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 2

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT DISTINCT FROM CAST($value AS INTEGER)

