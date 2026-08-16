-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	g_1."CategoryId",
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY CASE
		WHEN g_1."IntValue" = 20 THEN 1
		ELSE 0
	END),
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY CASE
		WHEN g_1."NullableIntValue" IS NOT NULL THEN 1
		ELSE 0
	END)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

