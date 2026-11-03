-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" DESC) as "RowNumber",
			e."RowNumber" as "RowNumber_1",
			e."RowNumber_1" as "RowNumber_2",
			e."Key_1"
		FROM
			(
				SELECT
					COUNT(*) as "RowNumber",
					Coalesce(g_1."Value1", 0) as "RowNumber_1",
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
	t1."RowNumber_2" DESC

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

