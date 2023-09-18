BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_ChildPredicate"."ParentID",
	"a_ChildPredicate"."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" "a_ChildPredicate" ON p."ParentID" = "a_ChildPredicate"."ParentID" AND "a_ChildPredicate"."ChildID" > 1

