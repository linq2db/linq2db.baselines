BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	gr."ParentID",
	gr."ChildID"
FROM
	"GrandChild" gr
GROUP BY
	gr."ParentID",
	gr."ChildID"

