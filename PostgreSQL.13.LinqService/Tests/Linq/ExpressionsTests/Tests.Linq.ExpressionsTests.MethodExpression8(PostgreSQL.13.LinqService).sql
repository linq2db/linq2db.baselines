BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Floor(ch."ChildID"::Float / 10)::Int
WHERE
	ch."ParentID" = p."ParentID"

