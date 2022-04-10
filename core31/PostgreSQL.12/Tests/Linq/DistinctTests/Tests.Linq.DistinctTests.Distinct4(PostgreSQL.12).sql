BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", p."ParentID" % 2),
	p."Value1"
FROM
	"Parent" p

