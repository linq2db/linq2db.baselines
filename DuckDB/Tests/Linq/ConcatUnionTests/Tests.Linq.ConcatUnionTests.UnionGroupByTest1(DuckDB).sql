-- DuckDB

SELECT
	t2.month_1,
	t2.year_1,
	CAST(1 AS INTEGER)
FROM
	(
		SELECT DISTINCT
			EXTRACT(month FROM t1.DateTimeValue) as month_1,
			EXTRACT(year FROM t1.DateTimeValue) as year_1
		FROM
			LinqDataTypes t1
	) t2
UNION
SELECT
	t3.SmallIntValue,
	t3.SmallIntValue,
	CAST(3 AS INTEGER)
FROM
	LinqDataTypes t3
UNION
SELECT
	EXTRACT(year FROM t4.DateTimeValue),
	EXTRACT(year FROM t4.DateTimeValue),
	CAST(2 AS INTEGER)
FROM
	LinqDataTypes t4

