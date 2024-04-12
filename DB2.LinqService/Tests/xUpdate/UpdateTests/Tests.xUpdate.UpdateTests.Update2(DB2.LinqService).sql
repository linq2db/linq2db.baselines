BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	CAST(@ParentID AS Int),
	CAST(@Value1 AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent" "p"
SET
	"ParentID" = "p"."ParentID" + 1
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

