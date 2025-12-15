-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ? AND "p"."MiddleName" IS NULL

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ? AND "p"."MiddleName" IS NULL

