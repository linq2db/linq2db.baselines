BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	g_2."ParentID",
	g_2.COUNT_1,
	g_2."Count2"
FROM
	(
		SELECT
			g_1."ParentID",
			COUNT(*) as COUNT_1,
			COUNT(*) OVER() as "Count2"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
ORDER BY
	g_2."ParentID" DESC
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

