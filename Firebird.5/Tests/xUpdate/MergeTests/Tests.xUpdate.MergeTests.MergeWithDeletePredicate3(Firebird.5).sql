-- Firebird.5 Firebird4
DECLARE @FirstName VarChar(8) -- String
SET     @FirstName = _utf8 x'D09DD0B5204153434949'
DECLARE @LastName VarChar(9) -- String
SET     @LastName = 'Last Name'
DECLARE @MiddleName VarChar(3) -- String
SET     @MiddleName = 'Mid'
DECLARE @Gender Char(1) -- String
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(8) -- String
SET     @Diagnosis = 'Negative'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	@PersonID,
	@Diagnosis
)

-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @ID
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t"."PersonID" as ID,
		"t"."FirstName",
		"t"."LastName",
		"t"."MiddleName",
		"t"."Gender"
	FROM
		"Person" "t"
			INNER JOIN "Patient" "a_Patient" ON "t"."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = CAST(@PersonID AS Int)
) "Source"
(
	ID,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
ON ("Target"."PersonID" = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."FirstName",
	"LastName" = "Source"."LastName",
	"MiddleName" = "Source"."MiddleName",
	"Gender" = "Source"."Gender"

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."FirstName",
	"Source"."LastName",
	"Source"."MiddleName",
	"Source"."Gender"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) = CAST(@PersonID AS Int) THEN DELETE

