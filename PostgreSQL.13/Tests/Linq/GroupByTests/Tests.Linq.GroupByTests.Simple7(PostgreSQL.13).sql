-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	gr."ParentID",
	gr."ChildID"
FROM
	"GrandChild" gr
GROUP BY
	gr."ParentID",
	gr."ChildID"

