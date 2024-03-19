BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t2.month_1,
	t2.month_1,
	t2.int_1
FROM
	(
		SELECT
			Cast(t1."SmallIntValue" as Int) as month_1,
			3 as int_1
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4."Month_1",
	t4."Year_1",
	1
FROM
	(
		SELECT
			Cast(Floor(Extract(month from t3."DateTimeValue")) as int) as "Month_1",
			Cast(Floor(Extract(year from t3."DateTimeValue")) as int) as "Year_1"
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4."Month_1",
	t4."Year_1"
UNION
SELECT
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t5

