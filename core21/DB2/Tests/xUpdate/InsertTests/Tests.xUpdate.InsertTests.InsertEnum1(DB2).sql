BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	1001,
	@Value1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2

SELECT
	Count(*)
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" = @id AND "_"."Value1" = @Value1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

