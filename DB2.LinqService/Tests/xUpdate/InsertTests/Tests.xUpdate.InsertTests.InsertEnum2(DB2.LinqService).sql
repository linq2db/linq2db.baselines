BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

