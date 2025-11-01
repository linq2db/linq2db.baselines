-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

