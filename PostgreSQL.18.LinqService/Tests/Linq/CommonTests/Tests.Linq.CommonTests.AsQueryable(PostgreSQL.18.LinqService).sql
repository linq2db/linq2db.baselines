BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

