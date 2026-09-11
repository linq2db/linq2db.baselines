-- PostgreSQL.19 PostgreSQL12
SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

