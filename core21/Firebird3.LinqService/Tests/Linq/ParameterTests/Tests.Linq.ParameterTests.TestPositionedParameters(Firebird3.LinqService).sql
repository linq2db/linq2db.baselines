BeforeExecute
-- Firebird3 Firebird
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2_1 Integer -- Int32
SET     @z2_1 = 2
DECLARE @y10_1 Integer -- Int32
SET     @y10_1 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @z2_2 Integer -- Int32
SET     @z2_2 = 2
DECLARE @y10_2 Integer -- Int32
SET     @y10_2 = 10
DECLARE @x3_1 Integer -- Int32
SET     @x3_1 = 3

SELECT
	((((Cast(@x3_1 as Int) * (Cast(@y10_2 as Int) - Cast(@z2_2 as Int)) / Cast(@x3_1 as Int)) * Cast(@z2_2 as Int)) * (((((Cast(@x3 as Int) * (Cast(@y10_1 as Int) - Cast(@z2_1 as Int)) / Cast(@x3 as Int)) * Cast(@z2_1 as Int)) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / ((Cast(@x3 as Int) * (Cast(@y10_1 as Int) - Cast(@z2_1 as Int)) / Cast(@x3 as Int)) * Cast(@z2_1 as Int))) * Cast(@z2 as Int)) - "child_1"."ChildID") / ((Cast(@x3_1 as Int) * (Cast(@y10_2 as Int) - Cast(@z2_2 as Int)) / Cast(@x3_1 as Int)) * Cast(@z2_2 as Int))) * "child_1"."ChildID")
FROM
	"Child" "child_1"

