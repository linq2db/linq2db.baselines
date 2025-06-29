BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	a_GrandChildren."ParentID",
	a_GrandChildren."ChildID",
	a_GrandChildren."GrandChildID",
	a_Child_1."ParentID" as "ParentID_1",
	a_Child_1."ChildID" as "ChildID_1",
	a_Parent."ParentID" as "ParentID_2",
	a_Parent."Value1"
FROM
	"GrandChild" p
		LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ChildID" = a_Child."ChildID"
		INNER JOIN "GrandChild" a_GrandChildren ON a_Child."ParentID" = a_GrandChildren."ParentID" AND (a_Child."ChildID" = a_GrandChildren."ChildID" OR a_Child."ChildID" IS NULL AND a_GrandChildren."ChildID" IS NULL)
		LEFT JOIN "Child" a_Child_1 ON a_GrandChildren."ParentID" = a_Child_1."ParentID" AND a_GrandChildren."ChildID" = a_Child_1."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child_1."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

