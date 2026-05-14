-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("i"."DecimalValue")
FROM
	"Inner" "i"
WHERE
	"i"."Group" = 1

