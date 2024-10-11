BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	COUNT(*)
FROM
	"Child" t1
		INNER JOIN "GrandChild" y ON t1."ParentID" = y."ParentID" AND t1."ChildID" = y."ChildID"
GROUP BY
	t1."ParentID"

