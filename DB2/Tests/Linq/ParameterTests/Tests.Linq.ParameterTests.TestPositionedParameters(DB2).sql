-- DB2 DB2.LUW DB2LUW
DECLARE @z2 Integer(4) -- Int32
SET     @z2 = 2
DECLARE @y10 Integer(4) -- Int32
SET     @y10 = 10
DECLARE @z2_1 Integer(4) -- Int32
SET     @z2_1 = 2
DECLARE @y10_1 Integer(4) -- Int32
SET     @y10_1 = 10
DECLARE @x3 Integer(4) -- Int32
SET     @x3 = 3
DECLARE @z2_2 Integer(4) -- Int32
SET     @z2_2 = 2
DECLARE @y10_2 Integer(4) -- Int32
SET     @y10_2 = 10
DECLARE @x3_1 Integer(4) -- Int32
SET     @x3_1 = 3

SELECT
	((((CAST(@x3_1 AS Int) * (CAST(@y10_2 AS Int) - CAST(@z2_2 AS Int)) / CAST(@x3_1 AS Int)) * CAST(@z2_2 AS Int)) * (((((CAST(@x3 AS Int) * (CAST(@y10_1 AS Int) - CAST(@z2_1 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2_1 AS Int)) * (CAST(@y10 AS Int) - CAST(@z2 AS Int)) / ((CAST(@x3 AS Int) * (CAST(@y10_1 AS Int) - CAST(@z2_1 AS Int)) / CAST(@x3 AS Int)) * CAST(@z2_1 AS Int))) * CAST(@z2 AS Int)) - "child_1"."ChildID") / ((CAST(@x3_1 AS Int) * (CAST(@y10_2 AS Int) - CAST(@z2_2 AS Int)) / CAST(@x3_1 AS Int)) * CAST(@z2_2 AS Int))) * "child_1"."ChildID")
FROM
	"Child" "child_1"

