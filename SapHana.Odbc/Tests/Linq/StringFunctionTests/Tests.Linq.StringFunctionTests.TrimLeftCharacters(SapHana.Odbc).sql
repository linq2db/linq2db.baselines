﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	LTRIM(('  ' || "p"."FirstName" || ' '), ' J') = 'ohn ' AND
	"p"."PersonID" = 1

