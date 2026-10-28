-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Count_1",
	t1."Count_2"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY (
				SELECT
					COUNT(*)
				FROM
					"Parent" p
				WHERE
					e."Count_1" = MOD(p."ParentID", 3)
			) ORDER BY e."Count_1") as "RowNumber",
			e."Count_1",
			e."Count_2"
		FROM
			(
				SELECT
					g_2."Key_1" as "Count_1",
					COUNT(*) as "Count_2"
				FROM
					(
						SELECT
							MOD(g_1."ParentID", 3) as "Key_1"
						FROM
							"Parent" g_1
					) g_2
				GROUP BY
					g_2."Key_1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Count_1"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

