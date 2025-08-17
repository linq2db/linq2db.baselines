BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	"a_Children"."ChildID",
	"a_Children"."ParentID"
FROM
	"Parent" c_1
		INNER JOIN "Child" "a_Children" ON c_1."ParentID" = "a_Children"."ParentID"
WHERE
	c_1."ParentID" = 1

