BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

