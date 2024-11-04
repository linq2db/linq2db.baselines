BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	CAST(@ParentID AS Int),
	"ch"."ChildID",
	"gc"."GrandChildID"
FROM
	"Parent" "gc_1"
		INNER JOIN "Child" "ch" ON "gc_1"."ParentID" = "ch"."ParentID"
		INNER JOIN "GrandChild" "gc" ON "ch"."ChildID" = "gc"."ChildID"
WHERE
	"ch"."ChildID" = 21 AND "gc"."GrandChildID" = 211

