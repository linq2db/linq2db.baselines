-- PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal)
FROM
	"Parent" p

