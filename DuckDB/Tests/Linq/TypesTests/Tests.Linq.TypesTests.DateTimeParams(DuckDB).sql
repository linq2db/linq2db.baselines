-- DuckDB
DECLARE $dateTime  -- DateTime2
SET     $dateTime = '1992-01-11 01:11:21.100000'::TIMESTAMP

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > $dateTime
LIMIT 1

-- DuckDB
DECLARE $dateTime  -- DateTime2
SET     $dateTime = '1993-01-11 01:11:21.100000'::TIMESTAMP

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > $dateTime
LIMIT 1

