-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	"TestFunctionParameters"(e."ParentID", e."ParentID")
FROM
	"Parent" e
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

