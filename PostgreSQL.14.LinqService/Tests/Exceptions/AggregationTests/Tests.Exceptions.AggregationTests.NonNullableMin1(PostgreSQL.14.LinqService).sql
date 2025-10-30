BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MIN(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

