-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	"TestFunctionParameters"(e."ParentID", -100)
FROM
	"Parent" e

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

