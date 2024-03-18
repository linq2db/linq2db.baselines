BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	SUM(g_1."ParentID" - 2)
FROM
	"Child" g_1
WHERE
	g_1."ParentID" + 2 > :n
GROUP BY
	g_1."ParentID" + 1,
	g_1."ChildID"

