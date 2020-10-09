BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Max(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

