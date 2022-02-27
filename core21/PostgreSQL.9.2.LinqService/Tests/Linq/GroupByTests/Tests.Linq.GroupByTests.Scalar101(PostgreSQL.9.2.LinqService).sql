BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

