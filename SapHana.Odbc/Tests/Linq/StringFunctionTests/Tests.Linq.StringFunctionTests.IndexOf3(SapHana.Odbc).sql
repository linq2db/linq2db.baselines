-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 7
DECLARE @s NVarChar(1) -- String
SET     @s = 'e'
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate(Left("p"."LastName", ?), ?, ?) - 1 = 4 AND "p"."PersonID" = 2

