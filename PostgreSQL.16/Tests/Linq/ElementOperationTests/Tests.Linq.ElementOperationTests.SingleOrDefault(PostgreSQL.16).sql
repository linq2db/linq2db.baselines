-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 100
LIMIT 2

