BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	"a_Children"."ChildID",
	"a_Children"."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID"::BigInt = "a_Children"."ParentID"
WHERE
	p."ParentID" = 1

