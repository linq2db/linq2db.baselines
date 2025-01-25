BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_Children"."ChildID",
	"a_Children"."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID"::BigInt = "a_Children"."ParentID"
WHERE
	p."ParentID" = 1

