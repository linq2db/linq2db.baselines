-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

