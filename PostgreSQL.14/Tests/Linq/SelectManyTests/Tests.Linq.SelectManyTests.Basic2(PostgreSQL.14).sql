-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

