-- PostgreSQL.9.3 PostgreSQL
SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

