BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID"
FROM
	"Parent" cp_1
		CROSS JOIN "Child" cp
		CROSS JOIN "GrandChild" c_1

