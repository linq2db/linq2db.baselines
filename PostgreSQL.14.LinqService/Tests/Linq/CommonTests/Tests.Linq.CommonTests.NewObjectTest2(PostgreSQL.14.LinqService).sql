BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" j ON p."ParentID" = j."ParentID"
WHERE
	p."ParentID" = 1

