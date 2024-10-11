BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ParentID"

