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
			CAST($value AS FLOAT) as Value_1
		FROM
			Person r
	) t1

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.14748365E+09'

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST($value AS FLOAT) as Value_1
		FROM
			Person r
	) t1

