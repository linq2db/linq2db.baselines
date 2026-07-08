-- PostgreSQL.18 PostgreSQL12

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

