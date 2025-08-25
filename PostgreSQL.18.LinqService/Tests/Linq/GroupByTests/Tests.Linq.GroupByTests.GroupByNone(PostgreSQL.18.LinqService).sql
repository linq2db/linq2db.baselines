BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

