-- SapHana.Odbc SapHanaOdbc

SELECT
	Coalesce("t"."Value1", '') || Coalesce(CAST("t"."Value2" AS NVarChar(11)), '') || Coalesce(Lower(CAST("t"."Value3" AS NVarChar(36))), '')
FROM
	"StringConcatIntGuidNullEntity" "t"
ORDER BY
	"t"."ID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3"
FROM
	"StringConcatIntGuidNullEntity" "t1"

