﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND LTRIM(('  ' || "pp"."FirstName" || ' '), (' J')) = 'ohn '

