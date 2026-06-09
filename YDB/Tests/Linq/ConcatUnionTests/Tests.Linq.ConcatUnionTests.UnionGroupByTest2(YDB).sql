-- YDB Ydb

SELECT
	t1.SmallIntValue as month_1,
	t1.SmallIntValue as year_1,
	Unwrap(CAST(3 AS Int32)) as int_1
FROM
	LinqDataTypes t1
UNION
SELECT
	t3.month_1 as month_1,
	t3.year_1 as year_1,
	Unwrap(CAST(1 AS Int32)) as int_1
FROM
	(
		SELECT DISTINCT
			DateTime::GetMonth(t2.DateTimeValue) as month_1,
			DateTime::GetYear(t2.DateTimeValue) as year_1
		FROM
			LinqDataTypes t2
	) t3
UNION
SELECT
	DateTime::GetYear(t4.DateTimeValue) as month_1,
	DateTime::GetYear(t4.DateTimeValue) as year_1,
	Unwrap(CAST(2 AS Int32)) as int_1
FROM
	LinqDataTypes t4

