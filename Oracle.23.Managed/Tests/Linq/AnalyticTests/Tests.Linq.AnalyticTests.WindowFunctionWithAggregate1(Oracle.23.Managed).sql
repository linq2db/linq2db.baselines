BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	g_2."ParentID",
	g_2.COUNT_1,
	g_2."Count1"
FROM
	(
		SELECT
			g_1."ParentID",
			COUNT(*) as COUNT_1,
			COUNT(*) OVER() as "Count1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
ORDER BY
	g_2."ParentID" DESC
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

