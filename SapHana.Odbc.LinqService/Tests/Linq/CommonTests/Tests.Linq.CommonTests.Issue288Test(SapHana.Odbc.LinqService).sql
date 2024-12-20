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
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = ?
LIMIT 1

