BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"GrandChild" "p"
		INNER JOIN "Child" "a_Child" ON "p"."ParentID" = "a_Child"."ParentID" AND "p"."ChildID" = "a_Child"."ChildID"
		INNER JOIN "GrandChild" "c_1" ON "a_Child"."ParentID" = "c_1"."ParentID" AND "a_Child"."ChildID" = "c_1"."ChildID"

