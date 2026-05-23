-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_2."Key_1",
	t1.PD
FROM
	(
		SELECT
			g_1."CategoryId" as "Key_1",
			PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY g_1."IntValue") as PD
		FROM
			"WindowFunctionTestEntity" g_1
		GROUP BY
			g_1."CategoryId"
	) g_2
		CROSS APPLY (
			SELECT
				g_2.PD
			FROM
				"WindowFunctionTestEntity" t
			WHERE
				g_2."Key_1" = t."CategoryId"
			FETCH NEXT 1 ROWS ONLY
		) t1

