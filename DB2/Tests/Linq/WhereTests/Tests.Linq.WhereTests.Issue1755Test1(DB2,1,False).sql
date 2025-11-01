-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	"c_1"."ParentID",
	"c_1"."Value1"
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" = @id AND "c_1"."Value1" IS NOT NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

