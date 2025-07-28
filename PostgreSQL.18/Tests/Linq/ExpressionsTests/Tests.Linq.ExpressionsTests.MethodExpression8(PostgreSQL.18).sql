BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Floor(ch."ChildID"::Float / 10::float8)::Int
WHERE
	ch."ParentID" = p."ParentID"

