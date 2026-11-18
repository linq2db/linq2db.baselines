-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	g_1."CategoryId",
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY CASE
		WHEN MOD(g_1."IntValue", 20) = 0 THEN 1
		ELSE 0
	END),
	PERCENTILE_DISC(0.90000000000000002D) WITHIN GROUP (ORDER BY CASE
		WHEN MOD(g_1."IntValue", 20) = 0 THEN 1
		ELSE 0
	END)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"
ORDER BY
	g_1."CategoryId"

