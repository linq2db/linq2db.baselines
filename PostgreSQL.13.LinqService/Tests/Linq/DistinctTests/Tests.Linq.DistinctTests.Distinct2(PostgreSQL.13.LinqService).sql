BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal)
FROM
	"Parent" p

