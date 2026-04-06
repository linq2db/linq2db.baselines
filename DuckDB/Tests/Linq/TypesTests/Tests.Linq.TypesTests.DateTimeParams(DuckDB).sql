-- DuckDB
DECLARE $dateTime NVarChar(26) -- String
SET     $dateTime = '1992-01-11 01:11:21.100000'

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > CAST($dateTime AS TIMESTAMP)
LIMIT 1

-- DuckDB
DECLARE $dateTime NVarChar(26) -- String
SET     $dateTime = '1993-01-11 01:11:21.100000'

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > CAST($dateTime AS TIMESTAMP)
LIMIT 1

