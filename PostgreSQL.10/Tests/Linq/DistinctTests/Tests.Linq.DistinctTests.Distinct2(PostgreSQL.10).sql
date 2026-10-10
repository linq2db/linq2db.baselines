-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Coalesce(p."Value1", Floor(p."ParentID"::decimal % 2)::Int)
FROM
	"Parent" p

