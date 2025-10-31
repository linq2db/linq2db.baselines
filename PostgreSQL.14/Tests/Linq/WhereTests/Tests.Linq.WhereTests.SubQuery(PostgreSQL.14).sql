-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

