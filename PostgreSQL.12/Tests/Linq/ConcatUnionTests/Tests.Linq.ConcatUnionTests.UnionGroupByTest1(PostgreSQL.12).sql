BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Month_1",
	t2."Year_1",
	1
FROM
	(
		SELECT
			Floor(Extract(month From t1."DateTimeValue"))::Int as "Month_1",
			Floor(Extract(year From t1."DateTimeValue"))::Int as "Year_1"
		FROM
			"LinqDataTypes" t1
	) t2
GROUP BY
	t2."Month_1",
	t2."Year_1"
UNION
SELECT
	t3."SmallIntValue",
	t3."SmallIntValue",
	3
FROM
	"LinqDataTypes" t3
UNION
SELECT
	Floor(Extract(year From t4."DateTimeValue"))::Int,
	Floor(Extract(year From t4."DateTimeValue"))::Int,
	2
FROM
	"LinqDataTypes" t4

