-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Count_1" ORDER BY e."c1" DESC) as "RowNumber",
			e."Count_1",
			e."c1",
			e."Key_1"
		FROM
			(
				SELECT
					COUNT(*) as "Count_1",
					Coalesce(g_1."Value1", 0) as "c1",
					g_1."Value1" as "Key_1"
				FROM
					"Parent" g_1
				GROUP BY
					g_1."Value1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."c1" DESC

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

