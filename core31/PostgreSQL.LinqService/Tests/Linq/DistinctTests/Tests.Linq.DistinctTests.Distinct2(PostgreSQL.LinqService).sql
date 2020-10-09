BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT 
	Coalesce(p."Value1", p."ParentID" % 2)
FROM
	"Parent" p

