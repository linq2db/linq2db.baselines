-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."SmallIntValue",
	t1."SmallIntValue",
	3::Int
FROM
	"LinqDataTypes" t1
UNION
SELECT
	t3.month_1,
	t3.year_1,
	1::Int
FROM
	(
		SELECT DISTINCT
			Floor(Extract(month From t2."DateTimeValue"))::Int as month_1,
			Floor(Extract(year From t2."DateTimeValue"))::Int as year_1
		FROM
			"LinqDataTypes" t2
	) t3
UNION
SELECT
	Floor(Extract(year From t4."DateTimeValue"))::Int,
	Floor(Extract(year From t4."DateTimeValue"))::Int,
	2::Int
FROM
	"LinqDataTypes" t4

