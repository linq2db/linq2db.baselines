-- SapHana.Native SapHana
DECLARE @Gender NVarChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:"Gender",
	:"Name_FirstName",
	:"Name_MiddleName",
	:"Name_LastName"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @nullableGender NVarChar(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	"Person" "t1"
SET
	"Gender" = :"nullableGender"
WHERE
	"t1"."FirstName" LIKE 'UpdateComplex%' ESCAPE '~'

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
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
	"t1"."PersonID" = :"id"
LIMIT 1

