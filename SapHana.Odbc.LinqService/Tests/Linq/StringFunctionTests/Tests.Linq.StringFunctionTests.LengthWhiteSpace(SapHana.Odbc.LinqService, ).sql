BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Str",
	Length("t"."Str")
FROM
	"TestLengthModel" "t"
LIMIT 2

