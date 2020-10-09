BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
LIMIT 1 OFFSET :n 

