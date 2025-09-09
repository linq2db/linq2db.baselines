BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p,
	"Child" t1
WHERE
	t1."ParentID" > 0

