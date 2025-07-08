BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

