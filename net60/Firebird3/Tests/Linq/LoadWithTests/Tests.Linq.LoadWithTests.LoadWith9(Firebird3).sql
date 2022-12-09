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
		LEFT JOIN "Child" "a_Child" ON "p"."ParentID" = "a_Child"."ParentID" AND "p"."ChildID" = "a_Child"."ChildID"
		INNER JOIN "GrandChild" "c_1" ON ("a_Child"."ParentID" = "c_1"."ParentID" OR "a_Child"."ParentID" IS NULL AND "c_1"."ParentID" IS NULL) AND ("a_Child"."ChildID" = "c_1"."ChildID" OR "a_Child"."ChildID" IS NULL AND "c_1"."ChildID" IS NULL)

