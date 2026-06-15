-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."CategoryId",
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."DecimalValue") FILTER (WHERE g_1."IntValue" > 0)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

