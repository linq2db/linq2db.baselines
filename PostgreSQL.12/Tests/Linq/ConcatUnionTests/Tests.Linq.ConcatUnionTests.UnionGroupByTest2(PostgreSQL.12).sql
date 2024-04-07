BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."SmallIntValue",
	t1."SmallIntValue",
	3
FROM
	"LinqDataTypes" t1
UNION
SELECT
	t2.month_1,
	t2.year_1,
	1
FROM
	(
		SELECT
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as month_1,
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as year_1
		FROM
			"LinqDataTypes" "selectParam"
	) t2
GROUP BY
	t2.month_1,
	t2.year_1
UNION
SELECT
	Cast(Floor(Extract(year from t3."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t3."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t3

