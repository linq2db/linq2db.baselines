-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

