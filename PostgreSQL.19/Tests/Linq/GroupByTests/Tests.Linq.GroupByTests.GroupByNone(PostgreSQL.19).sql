-- PostgreSQL.19 PostgreSQL12

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

