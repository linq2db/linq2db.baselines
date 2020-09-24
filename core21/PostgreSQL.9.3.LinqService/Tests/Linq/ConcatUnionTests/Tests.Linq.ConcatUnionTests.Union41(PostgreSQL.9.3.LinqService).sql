BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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

