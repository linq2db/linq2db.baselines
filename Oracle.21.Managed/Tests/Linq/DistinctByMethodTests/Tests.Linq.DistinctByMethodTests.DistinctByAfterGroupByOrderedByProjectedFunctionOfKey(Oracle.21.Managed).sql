-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1") as "RowNumber",
			e."RowNumber_1",
			e."Key_1",
			e."Count_1"
		FROM
			(
				SELECT
					MOD(g_1."ParentID", 2) as "RowNumber",
					-g_1."ParentID" as "RowNumber_1",
					g_1."ParentID" as "Key_1",
					COUNT(*) as "Count_1"
				FROM
					"Parent" g_1
				GROUP BY
					g_1."ParentID"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

