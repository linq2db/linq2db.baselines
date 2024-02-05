BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

