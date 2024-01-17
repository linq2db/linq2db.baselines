BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Max(t1."ChildID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

