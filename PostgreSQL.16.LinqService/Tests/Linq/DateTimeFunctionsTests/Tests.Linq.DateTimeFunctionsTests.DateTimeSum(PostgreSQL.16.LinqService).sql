BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."ID",
	g_2."COUNT_1",
	g_2."SUM_1",
	CASE
		WHEN g_2."SUM_1" IS NOT NULL THEN True
		ELSE False
	END,
	g_2."MAX_1"
FROM
	(
		SELECT
			g_1."ID",
			COUNT(*) as "COUNT_1",
			SUM(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)) as "SUM_1",
			MAX(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)) as "MAX_1"
		FROM
			"LinqDataTypes" g_1
		GROUP BY
			g_1."ID"
	) g_2

