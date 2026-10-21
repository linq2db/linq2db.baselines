-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	g_1."ParentID",
	g_1."Value1",
	COUNT(*)
FROM
	"Parent" g_1
GROUP BY
	g_1."ParentID",
	g_1."Value1"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

