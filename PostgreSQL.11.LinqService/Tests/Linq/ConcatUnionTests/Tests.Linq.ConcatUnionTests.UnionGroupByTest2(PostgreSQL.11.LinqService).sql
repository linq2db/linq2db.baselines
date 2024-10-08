BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t2.month_1,
	t2.month_1,
	t2.int_1
FROM
	(
		SELECT
			t1."SmallIntValue" as month_1,
			3::Int as int_1
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4."Month_1",
	t4."Year_1",
	1::Int
FROM
	(
		SELECT
			Floor(Extract(month From t3."DateTimeValue"))::Int as "Month_1",
			Floor(Extract(year From t3."DateTimeValue"))::Int as "Year_1"
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4."Month_1",
	t4."Year_1"
UNION
SELECT
	Floor(Extract(year From t5."DateTimeValue"))::Int,
	Floor(Extract(year From t5."DateTimeValue"))::Int,
	2::Int
FROM
	"LinqDataTypes" t5

