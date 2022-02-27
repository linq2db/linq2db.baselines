BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Max(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ParentID"

