BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	SUM(ch."ParentID")
FROM
	"Child" ch
		LEFT JOIN "Parent" p ON ch."ParentID" = p."ParentID"
GROUP BY
	ch."ChildID"

