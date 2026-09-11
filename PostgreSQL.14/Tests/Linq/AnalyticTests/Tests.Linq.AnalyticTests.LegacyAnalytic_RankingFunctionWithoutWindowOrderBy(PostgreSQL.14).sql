-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	p."Value1",
	ROW_NUMBER() OVER (PARTITION BY p."Value1")
FROM
	"Parent" p

