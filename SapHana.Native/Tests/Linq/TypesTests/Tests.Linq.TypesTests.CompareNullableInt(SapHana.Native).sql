-- SapHana.Native SapHana
SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

-- SapHana.Native SapHana
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = :"param"

