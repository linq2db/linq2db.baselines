-- PostgreSQL.13 PostgreSQL

SELECT
	t2.year_1,
	t2.year_1,
	t2.int_1
FROM
	(
		SELECT
			t1."SmallIntValue" as year_1,
			3::Int as int_1
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4.month_1,
	t4.year_1,
	1::Int
FROM
	(
		SELECT
			Floor(Extract(month From t3."DateTimeValue"))::Int as month_1,
			Floor(Extract(year From t3."DateTimeValue"))::Int as year_1
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4.month_1,
	t4.year_1
UNION
SELECT
	Floor(Extract(year From t5."DateTimeValue"))::Int,
	Floor(Extract(year From t5."DateTimeValue"))::Int,
	2::Int
FROM
	"LinqDataTypes" t5

