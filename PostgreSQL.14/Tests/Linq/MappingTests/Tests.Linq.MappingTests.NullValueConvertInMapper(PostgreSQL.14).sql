-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" <= 2
ORDER BY
	p."ParentID"

