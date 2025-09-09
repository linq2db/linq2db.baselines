BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	gr."ParentID",
	gr."ChildID"
FROM
	"GrandChild" gr
GROUP BY
	gr."ParentID",
	gr."ChildID"

