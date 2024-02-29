BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

