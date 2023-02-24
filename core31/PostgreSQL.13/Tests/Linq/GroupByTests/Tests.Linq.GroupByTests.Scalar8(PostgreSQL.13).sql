BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

