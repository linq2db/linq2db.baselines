﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

