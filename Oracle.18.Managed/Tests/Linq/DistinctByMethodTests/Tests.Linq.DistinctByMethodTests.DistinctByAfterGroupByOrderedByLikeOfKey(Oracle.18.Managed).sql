-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Length_1" ORDER BY e."c1" DESC, e."Key_1" DESC) as "RowNumber",
			e."c1",
			e."Key_1",
			e."Count_1"
		FROM
			(
				SELECT
					g_2."Length_1",
					CASE
						WHEN g_2."Key_1" LIKE 'J%' THEN 1
						ELSE 0
					END as "c1",
					g_2."Key_1",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							g_1."FirstName" as "Key_1",
							Length(g_1."FirstName") as "Length_1"
						FROM
							"Person" g_1
					) g_2
				GROUP BY
					g_2."Key_1",
					g_2."Length_1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."c1" DESC,
	t1."Key_1" DESC

