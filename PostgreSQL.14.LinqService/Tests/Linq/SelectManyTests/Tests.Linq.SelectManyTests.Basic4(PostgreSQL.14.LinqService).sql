BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		INNER JOIN "Child" t1 ON p."ParentID" = t1."ParentID" + 1

