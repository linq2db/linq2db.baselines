BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

