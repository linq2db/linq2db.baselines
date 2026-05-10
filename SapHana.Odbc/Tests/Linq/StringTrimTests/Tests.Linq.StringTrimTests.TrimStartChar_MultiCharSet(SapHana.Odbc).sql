-- SapHana.Odbc SapHanaOdbc

SELECT
	LTRIM("t"."CharColumn", '.+')
FROM
	"StringTrimTable" "t"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTrimTable" "t1"

