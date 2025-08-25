BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

