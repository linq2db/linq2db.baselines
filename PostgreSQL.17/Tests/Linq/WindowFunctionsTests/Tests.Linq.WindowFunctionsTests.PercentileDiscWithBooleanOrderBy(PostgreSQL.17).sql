-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	g_1."CategoryId",
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY (g_1."IntValue"::decimal % 20)::decimal = 0),
	PERCENTILE_DISC(0.90000000000000002) WITHIN GROUP (ORDER BY (g_1."IntValue"::decimal % 20)::decimal = 0)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"
ORDER BY
	g_1."CategoryId"

