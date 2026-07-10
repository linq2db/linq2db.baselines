-- PostgreSQL.18 PostgreSQL12
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

