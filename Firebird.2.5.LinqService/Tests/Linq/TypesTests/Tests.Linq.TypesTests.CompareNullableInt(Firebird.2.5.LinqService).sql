BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = @param

