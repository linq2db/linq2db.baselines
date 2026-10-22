-- DuckDB
SELECT
	COUNT(*)
FROM
	LinqDataTypes t1

-- DuckDB
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, CAST(p.ID % 1 AS DOUBLE)) < '2010-01-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, CAST(p.ID % 1 AS DOUBLE)) >= '2010-01-01 10:00:00.500000'::TIMESTAMP

-- DuckDB
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, CAST(p.ID % 1 AS DOUBLE)) = '2010-01-01 10:00:00.500000'::TIMESTAMP

