﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || 1 = 'John 1'

