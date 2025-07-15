BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	gr."ParentID",
	gr."ChildID"
FROM
	"GrandChild" gr
GROUP BY
	gr."ParentID",
	gr."ChildID"

