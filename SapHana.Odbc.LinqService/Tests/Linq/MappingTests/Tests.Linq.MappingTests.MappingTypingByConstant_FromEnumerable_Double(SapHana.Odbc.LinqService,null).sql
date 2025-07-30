BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", NULL AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3147483648 AS Double) AS "Value" FROM DUMMY) "arg" ON "entity"."PersonID" = "arg"."Id"

