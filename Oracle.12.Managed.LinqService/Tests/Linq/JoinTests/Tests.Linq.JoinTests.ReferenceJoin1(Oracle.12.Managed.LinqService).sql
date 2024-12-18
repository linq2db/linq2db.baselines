BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	g_1."GrandChildID"
FROM
	"Child" c_1
		INNER JOIN "GrandChild" g_1
			LEFT JOIN "Child" a_Child ON g_1."ParentID" = a_Child."ParentID" AND g_1."ParentID" IS NOT NULL AND g_1."ChildID" = a_Child."ChildID" AND g_1."ChildID" IS NOT NULL
		ON c_1."ParentID" = a_Child."ParentID" AND a_Child."ParentID" IS NOT NULL AND c_1."ChildID" = a_Child."ChildID" AND a_Child."ChildID" IS NOT NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	g_1."GrandChildID"
FROM
	"Child" c_1
		INNER JOIN "GrandChild" g_1
			LEFT JOIN "Child" a_Child ON g_1."ParentID" = a_Child."ParentID" AND g_1."ParentID" IS NOT NULL AND g_1."ChildID" = a_Child."ChildID" AND g_1."ChildID" IS NOT NULL
		ON c_1."ParentID" = a_Child."ParentID" AND a_Child."ParentID" IS NOT NULL AND c_1."ChildID" = a_Child."ChildID" AND a_Child."ChildID" IS NOT NULL

