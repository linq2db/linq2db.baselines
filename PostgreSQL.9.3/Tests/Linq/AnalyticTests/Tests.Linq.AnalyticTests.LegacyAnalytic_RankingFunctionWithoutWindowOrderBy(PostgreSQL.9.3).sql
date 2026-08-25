-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID",
	p."Value1",
	ROW_NUMBER() OVER (PARTITION BY p."Value1")
FROM
	"Parent" p

