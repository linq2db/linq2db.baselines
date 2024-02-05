BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

