-- Firebird.4 Firebird4

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

-- Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = @param

