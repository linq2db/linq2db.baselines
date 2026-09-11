-- PostgreSQL.11 PostgreSQL
SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

