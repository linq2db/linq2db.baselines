BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = @param

