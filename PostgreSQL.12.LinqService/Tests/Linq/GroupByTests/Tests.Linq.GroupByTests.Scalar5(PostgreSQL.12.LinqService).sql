BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ParentID"

