BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	COUNT(*) > 2

