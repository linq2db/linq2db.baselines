BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(0 AS Real) AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3.14748365E+09 AS Real) AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

