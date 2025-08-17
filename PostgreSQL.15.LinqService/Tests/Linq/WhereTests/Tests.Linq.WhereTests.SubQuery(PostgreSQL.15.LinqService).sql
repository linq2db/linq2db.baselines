BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

