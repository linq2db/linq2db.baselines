BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID" + 1,
	t1."ChildID"

