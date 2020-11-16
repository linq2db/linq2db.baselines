BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 11

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID",
	"keyParam"."GrandChildID"
FROM
	"GrandChild" "keyParam"
WHERE
	("keyParam"."ParentID" = @ParentID AND "keyParam"."ChildID" = @ChildID)

