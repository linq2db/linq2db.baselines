﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	RTrim('  ' || "p"."FirstName" || ' ') = '  John' AND
	"p"."PersonID" = 1

