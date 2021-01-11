BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(8) -- String
SET     @s = '123[[456'
DECLARE @toTest_1 NVarChar(4) -- String
SET     @toTest_1 = '%[[%'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? LIKE ? ESCAPE '~'

