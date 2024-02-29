BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

