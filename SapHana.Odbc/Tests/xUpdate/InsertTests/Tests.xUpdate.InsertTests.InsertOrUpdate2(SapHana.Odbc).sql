-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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
	1
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	'negative'
)

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

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5

SELECT
	1
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = ?

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

