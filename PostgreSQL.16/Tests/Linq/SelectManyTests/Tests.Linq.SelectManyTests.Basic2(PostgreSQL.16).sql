BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

