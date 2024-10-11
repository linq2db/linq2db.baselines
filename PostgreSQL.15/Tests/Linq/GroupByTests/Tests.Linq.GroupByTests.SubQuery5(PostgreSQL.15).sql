BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	SUM(ch."ParentID")
FROM
	"Child" ch
		LEFT JOIN "Parent" p ON ch."ParentID" = p."ParentID"
GROUP BY
	ch."ChildID"

