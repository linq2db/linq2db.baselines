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
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = @Value1
WHERE
	"p"."ParentID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 2

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = @Value1
WHERE
	"p"."ParentID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 3

