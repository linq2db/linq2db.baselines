-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ? AND "p"."FirstName" = ?

