-- PostgreSQL.19 PostgreSQL13

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

