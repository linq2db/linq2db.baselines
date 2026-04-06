-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST($value AS DOUBLE) as Value_1
		FROM
			Person r
	) t1

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '3147483648'

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST($value AS DOUBLE) as Value_1
		FROM
			Person r
	) t1

