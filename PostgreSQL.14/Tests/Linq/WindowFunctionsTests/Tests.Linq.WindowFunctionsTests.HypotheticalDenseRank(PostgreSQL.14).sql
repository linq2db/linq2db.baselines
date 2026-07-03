-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	g_1."CategoryId",
	DENSE_RANK(1000) WITHIN GROUP (ORDER BY g_1."IntValue"),
	DENSE_RANK(1000, 2000) WITHIN GROUP (ORDER BY g_1."IntValue", g_1."LongValue")
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

