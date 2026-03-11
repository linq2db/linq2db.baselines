-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

