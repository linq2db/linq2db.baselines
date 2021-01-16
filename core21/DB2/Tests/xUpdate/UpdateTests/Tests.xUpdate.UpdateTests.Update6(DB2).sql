BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"Value1",
	"ParentID"
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 2
WHERE
	"Parent"."ParentID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

