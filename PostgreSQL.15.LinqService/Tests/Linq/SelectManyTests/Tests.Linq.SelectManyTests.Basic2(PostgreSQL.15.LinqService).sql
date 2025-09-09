BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

