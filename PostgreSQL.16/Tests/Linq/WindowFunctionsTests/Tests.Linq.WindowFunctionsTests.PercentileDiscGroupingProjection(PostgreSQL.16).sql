-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Key_1",
	t1."PD"
FROM
	(
		SELECT
			g_1."CategoryId" as "Key_1",
			PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY g_1."IntValue") as "PD"
		FROM
			"WindowFunctionTestEntity" g_1
		GROUP BY
			g_1."CategoryId"
	) g_2
		INNER JOIN LATERAL (
			SELECT
				g_2."PD"
			FROM
				"WindowFunctionTestEntity" t
			WHERE
				g_2."Key_1" = t."CategoryId"
			LIMIT 1
		) t1 ON 1=1

