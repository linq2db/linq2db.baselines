BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	True::Boolean
FROM
	"Parent" p
UNION
SELECT
	ch."ParentID",
	False::Boolean
FROM
	"Child" ch

