BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."ParentID",
	t2."ChildID",
	t2."GrandChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" t1
		CROSS JOIN "GrandChild" t2

