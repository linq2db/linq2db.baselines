BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || CAST("t1"."Id" AS NVarChar(5000))
FROM
	"InstanceClass" "t1"

