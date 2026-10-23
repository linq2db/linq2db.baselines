-- PostgreSQL.18 PostgreSQL12
SELECT DISTINCT
	Coalesce(p."Value1", Floor(p."ParentID"::decimal % 2)::Int)
FROM
	"Parent" p

