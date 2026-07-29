-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	g_1."CategoryId",
	(
		SELECT
			PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY g_1."IntValue")
		FROM
			"WindowFunctionTestEntity" t
		WHERE
			g_1."CategoryId" = t."CategoryId"
		LIMIT 1
	)
FROM
	"WindowFunctionTestEntity" g_1
GROUP BY
	g_1."CategoryId"

