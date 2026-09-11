-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

