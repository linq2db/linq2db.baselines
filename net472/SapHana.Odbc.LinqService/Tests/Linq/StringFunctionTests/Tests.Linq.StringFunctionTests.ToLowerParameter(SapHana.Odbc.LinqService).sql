﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param NVarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") = Lower(?) AND "p"."PersonID" = 1

