-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '1'

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST($value AS DECIMAL(38, 18)) as Value_1
		FROM
			Person r
	) t1

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '2147483648.123'

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST($value AS DECIMAL(38, 18)) as Value_1
		FROM
			Person r
	) t1

