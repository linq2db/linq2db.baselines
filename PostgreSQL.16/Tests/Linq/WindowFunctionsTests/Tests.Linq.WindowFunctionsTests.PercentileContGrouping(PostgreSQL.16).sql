BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."CategoryId",
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."DecimalValue"),
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."DecimalValue"),
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."IntValue" DESC),
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

