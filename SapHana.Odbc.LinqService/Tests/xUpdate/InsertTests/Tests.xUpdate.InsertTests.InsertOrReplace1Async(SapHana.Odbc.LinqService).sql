BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = ?
WHERE
	"t1"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = ?
LIMIT 2

