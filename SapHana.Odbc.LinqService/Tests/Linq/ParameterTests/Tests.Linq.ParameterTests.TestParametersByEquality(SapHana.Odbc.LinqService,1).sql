﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @personId  -- Int32
SET     @personId = 1
DECLARE @personId  -- Int32
SET     @personId = 1
DECLARE @personId  -- Int32
SET     @personId = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ? AND "p"."PersonID" = ? AND "p"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @personId  -- Int32
SET     @personId = 1
DECLARE @personId  -- Int32
SET     @personId = 1
DECLARE @personId  -- Int32
SET     @personId = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ? AND "p"."PersonID" = ? AND "p"."PersonID" = ?

