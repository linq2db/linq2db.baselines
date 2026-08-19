-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" <= 2
ORDER BY
	p."ParentID"

