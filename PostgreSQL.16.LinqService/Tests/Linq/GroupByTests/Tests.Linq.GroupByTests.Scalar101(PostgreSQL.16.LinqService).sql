BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

