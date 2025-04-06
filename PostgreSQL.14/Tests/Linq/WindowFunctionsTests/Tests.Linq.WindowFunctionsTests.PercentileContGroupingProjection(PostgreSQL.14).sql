BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."Key_1",
	t1.c1,
	g_2.c1
FROM
	(
		SELECT
			g_1."CategoryId" as "Key_1",
			PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY g_1."IntValue" DESC) as c1
		FROM
			"WindowFunctionTestEntity" g_1
		GROUP BY
			g_1."CategoryId"
	) g_2
		LEFT JOIN LATERAL (
			SELECT
				PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY x."IntValue" DESC) as c1
			FROM
				"WindowFunctionTestEntity" x
			WHERE
				g_2."Key_1" = x."CategoryId"
		) t1 ON 1=1

