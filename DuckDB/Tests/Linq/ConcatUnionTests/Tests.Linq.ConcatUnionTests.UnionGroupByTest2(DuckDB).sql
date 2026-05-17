-- DuckDB

SELECT
	t1.SmallIntValue,
	t1.SmallIntValue,
	CAST(3 AS INTEGER)
FROM
	LinqDataTypes t1
UNION
SELECT
	t3.month_1,
	t3.year_1,
	CAST(1 AS INTEGER)
FROM
	(
		SELECT DISTINCT
			EXTRACT(month FROM t2.DateTimeValue) as month_1,
			EXTRACT(year FROM t2.DateTimeValue) as year_1
		FROM
			LinqDataTypes t2
	) t3
UNION
SELECT
	EXTRACT(year FROM t4.DateTimeValue),
	EXTRACT(year FROM t4.DateTimeValue),
	CAST(2 AS INTEGER)
FROM
	LinqDataTypes t4

