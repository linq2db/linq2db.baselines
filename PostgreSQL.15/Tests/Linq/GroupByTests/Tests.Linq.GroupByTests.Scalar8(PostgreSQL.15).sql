-- PostgreSQL.15 PostgreSQL13

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

