BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	cp."ParentID",
	cp."Value1"
FROM
	"Parent" cp
		CROSS JOIN "Child" c_1

