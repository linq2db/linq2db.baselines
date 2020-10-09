BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	(p."ParentID" IN (1, 2) OR 1 = 0)

