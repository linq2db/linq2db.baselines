-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

