-- Oracle.11.Managed Oracle11

SELECT
	g_1."CategoryId",
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY g_1."IntValue" DESC),
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY g_1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

