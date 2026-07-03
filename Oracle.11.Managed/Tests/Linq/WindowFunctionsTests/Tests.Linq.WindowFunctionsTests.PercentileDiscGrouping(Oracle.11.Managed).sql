-- Oracle.11.Managed Oracle11

SELECT
	g_1."CategoryId",
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY g_1."IntValue")
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

