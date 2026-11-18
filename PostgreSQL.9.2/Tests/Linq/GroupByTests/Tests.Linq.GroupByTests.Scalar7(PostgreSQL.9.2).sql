-- PostgreSQL.9.2 PostgreSQL
SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

