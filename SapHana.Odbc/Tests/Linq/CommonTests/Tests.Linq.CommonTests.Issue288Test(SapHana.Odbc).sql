BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = ?
LIMIT 1

