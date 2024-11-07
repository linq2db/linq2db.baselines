BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @idCopy  -- Int32
SET     @idCopy = 0

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @idCopy  -- Int32
SET     @idCopy = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > ?

