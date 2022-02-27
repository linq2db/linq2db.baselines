BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = ?

