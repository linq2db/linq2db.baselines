BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

