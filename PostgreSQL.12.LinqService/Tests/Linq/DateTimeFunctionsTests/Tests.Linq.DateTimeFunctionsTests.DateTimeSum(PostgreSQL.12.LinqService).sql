BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	t1."COUNT_1",
	t1."SUM_1",
	CASE
		WHEN t1."SUM_1" IS NOT NULL THEN True
		ELSE False
	END,
	t1."MAX_1"
FROM
	(
		SELECT
			g_1."ID" as "Key_1",
			COUNT(*) as "COUNT_1",
			SUM(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)) as "SUM_1",
			MAX(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)) as "MAX_1"
		FROM
			"LinqDataTypes" g_1
		GROUP BY
			g_1."ID"
	) t1

