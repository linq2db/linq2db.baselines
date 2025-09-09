BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", NULL AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(2147483648 AS Decimal) AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

