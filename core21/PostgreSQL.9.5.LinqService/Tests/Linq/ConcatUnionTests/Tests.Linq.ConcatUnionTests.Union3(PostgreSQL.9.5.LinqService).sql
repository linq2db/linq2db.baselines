BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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

