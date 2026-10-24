-- PostgreSQL.9.3 PostgreSQL
SELECT DISTINCT
	Coalesce(p."Value1", Floor(p."ParentID"::decimal % 2)::Int),
	p."Value1"
FROM
	"Parent" p

