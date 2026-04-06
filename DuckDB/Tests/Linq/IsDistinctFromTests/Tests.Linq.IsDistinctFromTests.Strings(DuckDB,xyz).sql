-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS DISTINCT FROM CAST($value AS VARCHAR)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS DISTINCT FROM CAST($value AS VARCHAR)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT DISTINCT FROM CAST($value AS VARCHAR)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT DISTINCT FROM CAST($value AS VARCHAR)

