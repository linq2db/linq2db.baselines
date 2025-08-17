BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	a_GrandChildren2."ParentID",
	a_GrandChildren2."ChildID",
	a_GrandChildren2."GrandChildID",
	a_Child."ParentID" as "ParentID_1",
	a_Child."ChildID" as "ChildID_1",
	a_Parent."ParentID" as "ParentID_2",
	a_Parent."Value1"
FROM
	"Child" p
		INNER JOIN "GrandChild" a_GrandChildren2 ON p."ParentID" = a_GrandChildren2."ParentID" AND p."ChildID" = a_GrandChildren2."ChildID"
		LEFT JOIN "Child" a_Child ON a_GrandChildren2."ParentID" = a_Child."ParentID" AND a_GrandChildren2."ChildID" = a_Child."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

