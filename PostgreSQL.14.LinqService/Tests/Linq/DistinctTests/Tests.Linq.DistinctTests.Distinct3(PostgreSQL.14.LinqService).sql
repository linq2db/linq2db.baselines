BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	p."Value1"
FROM
	"Parent" p

