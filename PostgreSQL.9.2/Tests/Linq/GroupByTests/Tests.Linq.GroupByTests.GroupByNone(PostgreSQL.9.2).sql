-- PostgreSQL.9.2 PostgreSQL
SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

