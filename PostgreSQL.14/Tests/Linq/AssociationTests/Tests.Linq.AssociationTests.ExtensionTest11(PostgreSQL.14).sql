-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Children"."ParentID",
	"a_Children"."ChildID"
FROM
	"Parent" t1
		INNER JOIN "Child" "a_Children" ON t1."ParentID" = "a_Children"."ParentID"

