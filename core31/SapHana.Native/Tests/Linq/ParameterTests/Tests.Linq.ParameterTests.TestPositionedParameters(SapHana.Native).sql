BeforeExecute
-- SapHana.Native SapHana
DECLARE @x3  -- Int32
SET     @x3 = 3
DECLARE @y10  -- Int32
SET     @y10 = 10
DECLARE @z2  -- Int32
SET     @z2 = 2
DECLARE @x3_1  -- Int32
SET     @x3_1 = 3
DECLARE @z2_1  -- Int32
SET     @z2_1 = 2
DECLARE @x3_1_1  -- Int32
SET     @x3_1_1 = 3
DECLARE @y10_1  -- Int32
SET     @y10_1 = 10
DECLARE @z2_1_1  -- Int32
SET     @z2_1_1 = 2
DECLARE @x3_1_2  -- Int32
SET     @x3_1_2 = 3
DECLARE @z2_1_2  -- Int32
SET     @z2_1_2 = 2
DECLARE @y10_2  -- Int32
SET     @y10_2 = 10
DECLARE @z2_2  -- Int32
SET     @z2_2 = 2
DECLARE @x3_1_3  -- Int32
SET     @x3_1_3 = 3
DECLARE @y10_1_1  -- Int32
SET     @y10_1_1 = 10
DECLARE @z2_1_3  -- Int32
SET     @z2_1_3 = 2
DECLARE @x3_1_4  -- Int32
SET     @x3_1_4 = 3
DECLARE @z2_1_4  -- Int32
SET     @z2_1_4 = 2
DECLARE @z2_2_1  -- Int32
SET     @z2_2_1 = 2
DECLARE @x3_2  -- Int32
SET     @x3_2 = 3
DECLARE @y10_3  -- Int32
SET     @y10_3 = 10
DECLARE @z2_3  -- Int32
SET     @z2_3 = 2
DECLARE @x3_3  -- Int32
SET     @x3_3 = 3
DECLARE @z2_4  -- Int32
SET     @z2_4 = 2

SELECT
	((((:"x3" * (:"y10" - :"z2") / :"x3_1") * :"z2_1") * (((((:"x3_1_1" * (:"y10_1" - :"z2_1_1") / :"x3_1_2") * :"z2_1_2") * (:"y10_2" - :"z2_2") / ((:"x3_1_3" * (:"y10_1_1" - :"z2_1_3") / :"x3_1_4") * :"z2_1_4")) * :"z2_2_1") - "child_1"."ChildID") / ((:"x3_2" * (:"y10_3" - :"z2_3") / :"x3_3") * :"z2_4")) * "child_1"."ChildID")
FROM
	"Child" "child_1"

