-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT DISTINCT
	g_1."ParentID" + 1
FROM
	"Child" g_1
WHERE
	g_1."ParentID" + 1 > :n

