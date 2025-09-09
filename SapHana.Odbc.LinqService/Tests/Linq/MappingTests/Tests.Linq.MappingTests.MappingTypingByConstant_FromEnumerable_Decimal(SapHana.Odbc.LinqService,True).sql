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
			SELECT 1 AS "Id", CAST(2147483648.123 AS Decimal(38, 10)) AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

