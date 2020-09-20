BeforeExecute
-- Firebird

SELECT
	"gc"."ParentID",
	"gc"."ChildID",
	"gc"."GrandChildID"
FROM
	"Parent" "cp"
		INNER JOIN "GrandChild" "gc" ON "cp"."ParentID" = "gc"."ParentID" AND "gc"."ChildID" = 22

