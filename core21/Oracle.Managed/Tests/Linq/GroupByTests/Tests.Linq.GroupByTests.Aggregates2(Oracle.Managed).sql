BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Sum(t1."ChildID"),
	Min(t1."ChildID"),
	Max(t1."ChildID"),
	Round(AVG(t1."ChildID"), 27),
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

