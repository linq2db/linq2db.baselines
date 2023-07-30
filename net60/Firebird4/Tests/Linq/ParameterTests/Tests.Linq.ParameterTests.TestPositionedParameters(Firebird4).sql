BeforeExecute
-- Firebird4 Firebird
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3

SELECT
	((((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int)) * (((((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int)) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / ((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int))) * Cast(@z2 as Int)) - "child_1"."ChildID") / ((Cast(@x3 as Int) * (Cast(@y10 as Int) - Cast(@z2 as Int)) / Cast(@x3 as Int)) * Cast(@z2 as Int))) * "child_1"."ChildID")
FROM
	"Child" "child_1"

