-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" t1

