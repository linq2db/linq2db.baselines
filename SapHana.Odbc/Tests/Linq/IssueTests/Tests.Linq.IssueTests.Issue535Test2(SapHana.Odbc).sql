-- SapHana.Odbc SapHanaOdbc
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'

SELECT
	"q"."Id",
	"q"."Name",
	"q"."ContactEmail",
	Coalesce("q"."Enabled", 0)
FROM
	"CustomerBase" "q"
WHERE
	"q"."ClientType" = 'Client' AND ("q"."Name" LIKE ? ESCAPE '~' OR "q"."ContactEmail" LIKE ? ESCAPE '~')

