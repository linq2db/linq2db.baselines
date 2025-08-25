BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

