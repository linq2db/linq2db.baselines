-- SapHana.Odbc SapHanaOdbc

SELECT
	LTRIM("t"."VarCharColumn", '.+')
FROM
	"StringTrimTable" "t"

