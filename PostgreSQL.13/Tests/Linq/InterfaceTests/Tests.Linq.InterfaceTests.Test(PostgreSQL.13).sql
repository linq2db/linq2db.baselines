-- PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"

