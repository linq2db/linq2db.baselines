BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

