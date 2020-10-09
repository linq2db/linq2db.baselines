BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" % 2),
	p."Value1",
	Coalesce(p."Value1", p."ParentID" % 2)
FROM
	"Parent" p

