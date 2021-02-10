BeforeExecute
-- Firebird3 Firebird

SELECT
	"g_1"."ParentID",
	"g_1"."ChildID",
	"g_1"."GrandChildID"
FROM
	"GrandChild" "g_1"
		LEFT JOIN "Child" "a_Child"
			LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		ON "g_1"."ParentID" = "a_Child"."ParentID" AND "g_1"."ChildID" = "a_Child"."ChildID"
WHERE
	"a_Parent"."Value1" = 1

