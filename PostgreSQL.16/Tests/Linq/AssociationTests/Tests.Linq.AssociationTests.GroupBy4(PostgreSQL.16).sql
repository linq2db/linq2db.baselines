BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Year_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from g_1."DateTimeValue")) as int) as "Year_1"
		FROM
			"LinqDataTypes" g_1
	) g_2
GROUP BY
	g_2."Year_1"

