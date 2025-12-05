-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + @ParentID),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

