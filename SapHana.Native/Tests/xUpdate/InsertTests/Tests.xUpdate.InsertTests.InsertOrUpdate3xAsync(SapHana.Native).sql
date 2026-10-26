-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

-- SapHana.Native SapHana
SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Native SapHana
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + :"i" AS NVarChar(11))
WHERE
	"t1"."PersonID" = :"id2"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 5

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:"id",
	'abc'
)

-- SapHana.Native SapHana
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + :"i" AS NVarChar(11))
WHERE
	"t1"."PersonID" = :"id2"

-- SapHana.Native SapHana
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient" "t1"
SET
	"Diagnosis" = CAST(Length("t1"."Diagnosis") + :"i" AS NVarChar(11))
WHERE
	"t1"."PersonID" = :"id2"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = :"id"
LIMIT 2

