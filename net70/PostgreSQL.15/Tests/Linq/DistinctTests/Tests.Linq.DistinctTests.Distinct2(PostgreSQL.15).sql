BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" % 2)
FROM
	"Parent" p

