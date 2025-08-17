BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

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

