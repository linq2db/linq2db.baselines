BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."ParentID",
	t1.COUNT_1,
	t1."c1"
FROM
	(
		SELECT
			g_2."ParentID",
			g_2.COUNT_1,
			g_2."c1"
		FROM
			(
				SELECT
					g_1."ParentID",
					COUNT(*) as COUNT_1,
					COUNT(*) OVER() as "c1"
				FROM
					"Child" g_1
				GROUP BY
					g_1."ParentID"
			) g_2
		ORDER BY
			g_2."ParentID" DESC
	) t1
WHERE
	ROWNUM <= :take

