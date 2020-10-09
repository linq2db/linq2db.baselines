BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" <> 1

