-- PostgreSQL.9.3 PostgreSQL
SELECT
	child_1."ParentID",
	child_1."ChildID"
FROM
	"Child" child_1
WHERE
	child_1."ChildID" = -1

