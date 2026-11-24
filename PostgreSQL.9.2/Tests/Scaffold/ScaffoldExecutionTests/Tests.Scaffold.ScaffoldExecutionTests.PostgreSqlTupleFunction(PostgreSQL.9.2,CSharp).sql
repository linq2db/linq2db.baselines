-- PostgreSQL.9.2 PostgreSQL
SELECT
	"TestFunctionParameters"(e."ParentID", e."ParentID")
FROM
	"Parent" e
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

