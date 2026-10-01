-- PostgreSQL.11 PostgreSQL
SELECT DISTINCT
	Coalesce(p."Value1", Floor(p."ParentID"::decimal % 2)::Int)
FROM
	"Parent" p

