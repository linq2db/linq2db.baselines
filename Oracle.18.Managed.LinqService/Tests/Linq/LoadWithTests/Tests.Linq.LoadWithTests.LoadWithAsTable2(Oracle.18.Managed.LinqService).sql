BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."ParentID",
	t."ChildID",
	t."GrandChildID",
	a_Child."ParentID" as "ParentID_1",
	a_Child."ChildID" as "ChildID_1",
	a_Parent."ParentID" as "ParentID_2",
	a_Parent."Value1"
FROM
	"GrandChild" t
		LEFT JOIN "Child" a_Child ON t."ParentID" = a_Child."ParentID" AND t."ChildID" = a_Child."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

