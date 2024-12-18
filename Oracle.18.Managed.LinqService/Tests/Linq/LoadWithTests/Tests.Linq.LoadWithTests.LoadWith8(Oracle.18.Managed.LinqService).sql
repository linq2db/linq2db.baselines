BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
		LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ParentID" IS NOT NULL AND p."ChildID" = a_Child."ChildID" AND p."ChildID" IS NOT NULL
		INNER JOIN "GrandChild" a_GrandChildren ON a_Child."ParentID" = a_GrandChildren."ParentID" AND a_GrandChildren."ParentID" IS NOT NULL AND a_Child."ChildID" = a_GrandChildren."ChildID" AND a_GrandChildren."ChildID" IS NOT NULL
		LEFT JOIN "Child" a_Child_1 ON a_GrandChildren."ParentID" = a_Child_1."ParentID" AND a_GrandChildren."ParentID" IS NOT NULL AND a_GrandChildren."ChildID" = a_Child_1."ChildID" AND a_GrandChildren."ChildID" IS NOT NULL
		LEFT JOIN "Parent" a_Parent ON a_Child_1."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

