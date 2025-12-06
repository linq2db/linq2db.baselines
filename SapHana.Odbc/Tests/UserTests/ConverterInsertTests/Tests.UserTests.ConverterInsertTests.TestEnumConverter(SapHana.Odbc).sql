-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName NVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."PersonID" = ?
LIMIT 1

