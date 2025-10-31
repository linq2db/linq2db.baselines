-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

