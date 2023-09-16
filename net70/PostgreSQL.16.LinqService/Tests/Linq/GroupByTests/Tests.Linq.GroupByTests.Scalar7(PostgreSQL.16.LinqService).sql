BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Max(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

