-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(Coalesce(e."Key_1", 0), 2) ORDER BY e."RowNumber" DESC) as "RowNumber",
			e."RowNumber" as "RowNumber_1",
			e."Key_1",
			e."Count_1",
			e."c1"
		FROM
			(
				SELECT
					g_1."Value1" as "Key_1",
					Coalesce(g_1."Value1", 0) as "RowNumber",
					COUNT(*) as "Count_1",
					Coalesce(g_1."Value1", 0) as "c1"
				FROM
					"Parent" g_1
				GROUP BY
					g_1."Value1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1" DESC,
	t1."c1" DESC

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

