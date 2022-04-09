BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID" * 1000
FROM
	"Child" ch
WHERE
	ch."ParentID" * 1000 > 2000

