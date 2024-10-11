BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

