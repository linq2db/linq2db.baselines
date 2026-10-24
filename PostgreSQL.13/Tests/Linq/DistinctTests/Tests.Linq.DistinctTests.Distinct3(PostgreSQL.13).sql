-- PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Coalesce(p."Value1", Floor(p."ParentID"::decimal % 2)::Int),
	p."Value1"
FROM
	"Parent" p

