BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

