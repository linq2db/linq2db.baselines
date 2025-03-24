﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = ?
LIMIT 2

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = ?
LIMIT 2

