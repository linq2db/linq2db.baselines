BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" ch ON p."ParentID" = ch."ParentID"

