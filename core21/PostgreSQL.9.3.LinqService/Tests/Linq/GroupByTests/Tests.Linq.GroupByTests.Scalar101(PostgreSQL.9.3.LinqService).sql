BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

