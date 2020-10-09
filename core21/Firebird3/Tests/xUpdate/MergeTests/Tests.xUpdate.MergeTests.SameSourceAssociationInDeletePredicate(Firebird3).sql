BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Patient" "t1"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Doctor" "t1"

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'O'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 141
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 142
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 139
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'sick'

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

BeforeExecute
-- Firebird3 Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 140
DECLARE @Diagnosis VarChar(9) -- String
SET     @Diagnosis = 'very sick'

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

BeforeExecute
-- Firebird3 Firebird

MERGE INTO "Patient" "Target"
USING ( 
	SELECT 
		"t1"."PersonID", 
		"t1"."Diagnosis", 
		"a_Person"."FirstName"
	FROM
		"Patient" "t1"
			LEFT JOIN "Person" "a_Person" ON "t1"."PersonID" = "a_Person"."PersonID"
) "Source"
(
	"PersonID", 
	"Diagnosis", 
	"FirstName"
)
ON ("Target"."PersonID" = "Source"."PersonID" AND "Source"."Diagnosis" LIKE '%very%')
WHEN MATCHED AND EXISTS(
	SELECT 
		*
	FROM
		"Person" "a_Person_1"
	WHERE
		"Source"."FirstName" = 'first 4' AND "a_Person_1"."FirstName" = 'first 4' AND
		"Target"."PersonID" = "a_Person_1"."PersonID"
) THEN DELETE

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."PersonID", 
	"t1"."Diagnosis"
FROM
	"Patient" "t1"
ORDER BY
	"t1"."PersonID"

