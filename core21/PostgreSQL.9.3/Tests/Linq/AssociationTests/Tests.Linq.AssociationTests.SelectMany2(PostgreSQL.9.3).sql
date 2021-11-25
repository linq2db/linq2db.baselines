BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	cp."ParentID",
	cp."Value1"
FROM
	"Parent" cp
		CROSS JOIN "Child" c_1

