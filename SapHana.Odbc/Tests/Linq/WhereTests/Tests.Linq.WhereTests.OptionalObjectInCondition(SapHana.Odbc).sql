-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

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
	1 = 0

-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

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

