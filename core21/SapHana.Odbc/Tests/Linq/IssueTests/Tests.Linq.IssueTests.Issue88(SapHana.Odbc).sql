﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = 'M'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND 'M' = "_"."Gender"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND ? = "_"."Gender"

