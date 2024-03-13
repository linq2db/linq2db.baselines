BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	g_1."ID",
	Count(*),
	Sum(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)),
	Max(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000))
FROM
	"LinqDataTypes" g_1
GROUP BY
	g_1."ID"

