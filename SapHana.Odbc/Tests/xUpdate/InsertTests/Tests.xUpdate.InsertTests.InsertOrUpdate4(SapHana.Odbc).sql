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
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + ? AS NVarChar(11))
WHERE
	"t1"."PersonID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 5
DECLARE @diagnosis Int -- Int32
SET     @diagnosis = 3
DECLARE @i Int -- Int32
SET     @i = 0

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	?,
	CAST(? + ? AS NVarChar(11))
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + ? AS NVarChar(11))
WHERE
	"t1"."PersonID" = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id Int -- Int32
SET     @id = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + ? AS NVarChar(11))
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
LIMIT 2

