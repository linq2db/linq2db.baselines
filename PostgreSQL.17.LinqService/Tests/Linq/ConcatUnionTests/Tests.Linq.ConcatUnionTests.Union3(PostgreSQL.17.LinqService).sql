BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	True
FROM
	"Parent" p
UNION
SELECT
	ch."ParentID",
	False
FROM
	"Child" ch

