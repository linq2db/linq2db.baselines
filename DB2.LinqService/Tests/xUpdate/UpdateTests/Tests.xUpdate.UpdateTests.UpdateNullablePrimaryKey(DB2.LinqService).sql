BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GrandChildID Integer(4) -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 10000

UPDATE
	"GrandChild"
SET
	"GrandChild"."GrandChildID" = @GrandChildID
WHERE
	"GrandChild"."ParentID" = @ParentID AND "GrandChild"."ChildID" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GrandChildID Integer(4) -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 111

UPDATE
	"GrandChild"
SET
	"GrandChild"."GrandChildID" = @GrandChildID
WHERE
	"GrandChild"."ParentID" = @ParentID AND "GrandChild"."ChildID" = @ChildID

