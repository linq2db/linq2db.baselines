-- PostgreSQL.19 PostgreSQL12
SELECT
	g_1."CategoryId",
	CUME_DIST(1000) WITHIN GROUP (ORDER BY g_1."IntValue"),
	CUME_DIST(1000, 2000) WITHIN GROUP (ORDER BY g_1."IntValue", g_1."LongValue")
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

