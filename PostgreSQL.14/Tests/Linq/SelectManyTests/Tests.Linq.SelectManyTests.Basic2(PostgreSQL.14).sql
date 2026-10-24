-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

