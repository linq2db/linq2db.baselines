-- PostgreSQL.11 PostgreSQL
SELECT
	"TestFunctionParameters"(e."ParentID", e."ParentID")
FROM
	"Parent" e
LIMIT 1

-- PostgreSQL.11 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

