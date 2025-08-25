BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @GrandChildID Integer -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 10000

UPDATE
	"GrandChild" "t1"
SET
	"GrandChildID" = CAST(@GrandChildID AS Int)
WHERE
	"t1"."ParentID" = @ParentID AND "t1"."ChildID" IS NULL

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @GrandChildID Integer -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 111

UPDATE
	"GrandChild" "t1"
SET
	"GrandChildID" = CAST(@GrandChildID AS Int)
WHERE
	"t1"."ParentID" = @ParentID AND "t1"."ChildID" = @ChildID

