BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", 0) > 0

