﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	"t1"."PersonID",
	"t1"."Taxonomy"
FROM
	"Doctor" "t1"
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	"t1"."PersonID",
	"t1"."Taxonomy"
FROM
	"Doctor" "t1"
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 3

SELECT
	"t1"."PersonID",
	"t1"."Taxonomy"
FROM
	"Doctor" "t1"
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 4

SELECT
	"t1"."PersonID",
	"t1"."Taxonomy"
FROM
	"Doctor" "t1"
WHERE
	"t1"."PersonID" = ?

