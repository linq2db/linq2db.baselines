-- PostgreSQL.19 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

