-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" t1

