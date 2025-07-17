BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName NVarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(11) -- String
SET     @LastName = 'LastName307'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = ?
LIMIT 1

