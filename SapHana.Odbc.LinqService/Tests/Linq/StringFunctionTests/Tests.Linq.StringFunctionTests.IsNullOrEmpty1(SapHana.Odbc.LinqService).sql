﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Length("p"."FirstName") <> 0 AND "p"."PersonID" = 1

