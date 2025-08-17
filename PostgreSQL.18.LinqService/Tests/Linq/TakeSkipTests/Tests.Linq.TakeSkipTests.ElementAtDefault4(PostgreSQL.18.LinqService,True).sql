BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 300000

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
LIMIT 1 OFFSET :n 

