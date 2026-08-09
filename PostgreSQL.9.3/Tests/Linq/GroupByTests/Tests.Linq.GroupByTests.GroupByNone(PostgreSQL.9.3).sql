-- PostgreSQL.9.3 PostgreSQL
SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

