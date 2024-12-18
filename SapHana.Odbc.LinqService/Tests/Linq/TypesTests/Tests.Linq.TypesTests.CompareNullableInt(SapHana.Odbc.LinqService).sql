BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param  -- Int32
SET     @param = 1

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."Value1" = ? AND "t"."Value1" IS NOT NULL

