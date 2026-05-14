-- SapHana.Odbc SapHanaOdbc

SELECT
	RTRIM("t"."VarCharColumn", 'ab')
FROM
	"StringTrimTable" "t"
ORDER BY
	"t"."Id"

