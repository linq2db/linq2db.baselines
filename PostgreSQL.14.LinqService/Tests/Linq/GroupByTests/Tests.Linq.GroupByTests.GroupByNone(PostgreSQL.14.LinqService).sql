BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Min(gr."ParentID"),
	Max(gr."ParentID")
FROM
	"Parent" gr

