BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"Child" ch
LIMIT :n

