BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Patient" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Doctor" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'O'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 9
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
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 10
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
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 7
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
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 8
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
-- DB2 DB2.LUW DB2LUW

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t1"."PersonID" as ID,
		"t1"."FirstName",
		"a_Patient"."Diagnosis"
	FROM
		"Person" "t1"
			LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
) "Source"
(
	ID,
	"FirstName",
	"Diagnosis"
)
ON ("Target"."PersonID" = "Source".ID AND "Source"."FirstName" = 'first 4')

WHEN MATCHED THEN
UPDATE
SET
	"Target"."MiddleName" = 'first ' || "Source"."Diagnosis",
	"Target"."LastName" = 'last ' || (
		SELECT
			"a_Patient_1"."Diagnosis"
		FROM
			"Patient" "a_Patient_1"
		WHERE
			"Target"."PersonID" = "a_Patient_1"."PersonID"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

