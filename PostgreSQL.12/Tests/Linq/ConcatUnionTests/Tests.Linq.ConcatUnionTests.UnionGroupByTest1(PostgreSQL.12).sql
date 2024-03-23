BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Month_1",
	t2."Year_1",
	1
FROM
	(
		SELECT
			Cast(Floor(Extract(month from t1."DateTimeValue")) as int) as "Month_1",
			Cast(Floor(Extract(year from t1."DateTimeValue")) as int) as "Year_1"
		FROM
			"LinqDataTypes" t1
	) t2
GROUP BY
	t2."Month_1",
	t2."Year_1"
UNION
SELECT
	Cast(t3."SmallIntValue" as Int),
	Cast(t3."SmallIntValue" as Int),
	3
FROM
	"LinqDataTypes" t3
UNION
SELECT
	Cast(Floor(Extract(year from t4."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t4."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t4

