BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ChildID",
	Round(AVG(t1."ParentID"), 27)
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

