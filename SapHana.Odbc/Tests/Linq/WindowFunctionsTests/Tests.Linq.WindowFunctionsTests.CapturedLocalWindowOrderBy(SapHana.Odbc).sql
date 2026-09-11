-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id",
	ROW_NUMBER() OVER ()
FROM
	"WindowFunctionTestEntity" "t"

