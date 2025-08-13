BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

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

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

