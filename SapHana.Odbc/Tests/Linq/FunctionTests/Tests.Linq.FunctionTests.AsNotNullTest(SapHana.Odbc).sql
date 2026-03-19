-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1",
	"Parent" "p2"
WHERE
	"t1"."Value1" = "p2"."Value1"

