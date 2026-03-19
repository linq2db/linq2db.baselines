-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
		INNER JOIN "Parent" p ON p."ParentID" = Floor(t1."ChildID"::Float / 10)::Int
WHERE
	t1."ParentID" = p."ParentID"

