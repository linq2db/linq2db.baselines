-- SapHana.Odbc SapHanaOdbc

SELECT
	RTRIM("t"."VarCharColumn", '.+')
FROM
	"StringTrimTable" "t"

