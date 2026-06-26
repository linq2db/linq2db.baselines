-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_1."CategoryId",
	RANK(1000) WITHIN GROUP (ORDER BY g_1."IntValue"),
	RANK(1000, 2000) WITHIN GROUP (ORDER BY g_1."IntValue", g_1."LongValue")
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

