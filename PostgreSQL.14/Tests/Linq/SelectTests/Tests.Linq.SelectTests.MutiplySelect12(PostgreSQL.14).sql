-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1
		CROSS JOIN "Child" child_1
WHERE
	t1."ChildID" IS NOT NULL

