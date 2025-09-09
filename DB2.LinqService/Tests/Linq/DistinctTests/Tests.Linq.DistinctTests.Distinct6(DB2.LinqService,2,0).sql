BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + @ParentID),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

