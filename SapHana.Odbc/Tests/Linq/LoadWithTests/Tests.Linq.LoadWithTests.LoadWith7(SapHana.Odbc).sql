BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_GrandChildren2"."ParentID",
	"a_GrandChildren2"."ChildID",
	"a_GrandChildren2"."GrandChildID",
	"a_Child"."ParentID",
	"a_Child"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "p"
		INNER JOIN "GrandChild" "a_GrandChildren2" ON "p"."ParentID" = "a_GrandChildren2"."ParentID" AND "a_GrandChildren2"."ParentID" IS NOT NULL AND "p"."ChildID" = "a_GrandChildren2"."ChildID" AND "a_GrandChildren2"."ChildID" IS NOT NULL
		LEFT JOIN "Child" "a_Child" ON "a_GrandChildren2"."ParentID" = "a_Child"."ParentID" AND "a_GrandChildren2"."ParentID" IS NOT NULL AND "a_GrandChildren2"."ChildID" = "a_Child"."ChildID" AND "a_GrandChildren2"."ChildID" IS NOT NULL
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
LIMIT 1

