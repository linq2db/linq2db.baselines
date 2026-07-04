-- PostgreSQL.19 PostgreSQL13

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

