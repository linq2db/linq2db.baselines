BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(CAST(COUNT(*) AS Float) * 100D) / SUM(COUNT(*)) OVER(),
	SUM(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	SUM(g_1."ParentID") <> 36 OR SUM(g_1."ParentID") IS NULL

