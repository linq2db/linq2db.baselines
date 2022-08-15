BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

