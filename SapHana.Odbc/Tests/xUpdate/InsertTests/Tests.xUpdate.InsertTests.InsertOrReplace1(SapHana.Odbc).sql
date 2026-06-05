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

-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

UPSERT "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'

UPSERT "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonID Int -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'

UPSERT "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
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

