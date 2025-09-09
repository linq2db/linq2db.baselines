BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = @param

