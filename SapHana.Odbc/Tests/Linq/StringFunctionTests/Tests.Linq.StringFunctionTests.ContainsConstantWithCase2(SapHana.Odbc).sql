﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%Joh%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND "p"."PersonID" = 1

