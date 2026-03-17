-- PostgreSQL.18 PostgreSQL

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

