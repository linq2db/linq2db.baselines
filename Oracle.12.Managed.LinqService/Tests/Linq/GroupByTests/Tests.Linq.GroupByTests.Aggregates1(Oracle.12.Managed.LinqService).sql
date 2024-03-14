BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*),
	Sum(g_1."ChildID"),
	Min(g_1."ChildID"),
	Max(g_1."ChildID"),
	Round(AVG(g_1."ChildID"), 27)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

