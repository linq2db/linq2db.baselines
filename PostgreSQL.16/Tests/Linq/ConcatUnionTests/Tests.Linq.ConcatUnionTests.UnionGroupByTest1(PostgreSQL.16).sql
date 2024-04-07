BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1.month_1,
	t1.year_1,
	1
FROM
	(
		SELECT
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as month_1,
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as year_1
		FROM
			"LinqDataTypes" "selectParam"
	) t1
GROUP BY
	t1.month_1,
	t1.year_1
UNION
SELECT
	t2."SmallIntValue",
	t2."SmallIntValue",
	3
FROM
	"LinqDataTypes" t2
UNION
SELECT
	Cast(Floor(Extract(year from t3."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t3."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t3

