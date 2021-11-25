BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID"
FROM
	"Parent" cp_1
		INNER JOIN "Child" cp
			CROSS JOIN "GrandChild" c_1
		ON cp_1."ParentID" = c_1."ParentID" AND cp_1."ParentID" = cp."ParentID"

