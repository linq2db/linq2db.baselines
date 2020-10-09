BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."ParentID", 
	True
FROM
	"Parent" p
UNION
SELECT 
	ch."ParentID", 
	False
FROM
	"Child" ch

