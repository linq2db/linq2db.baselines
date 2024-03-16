BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Min(gr."ParentID"),
	Max(gr."ParentID")
FROM
	"Parent" gr

