﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."PersonID",
	"_"."Gender",
	"_"."FirstName",
	"_"."MiddleName",
	"_"."LastName"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1
LIMIT 1

