BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	child_1."ParentID",
	child_1."ChildID"
FROM
	"Child" child_1
WHERE
	child_1."ChildID" = -1

