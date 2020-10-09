BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

SELECT 
	x."ParentID", 
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" > 1

