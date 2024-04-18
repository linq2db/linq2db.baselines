BeforeExecute
BeginTransaction
BeforeExecute
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

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
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

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @ID
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @PersonID_1 Integer -- Int32
SET     @PersonID_1 = 1

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
			LEFT JOIN "Patient" "a_Patient" ON "t"."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = @PersonID
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
	"Target"."FirstName" = "Source"."FirstName",
	"Target"."LastName" = "Source"."LastName",
	"Target"."MiddleName" = "Source"."MiddleName",
	"Target"."Gender" = "Source"."Gender"

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

WHEN NOT MATCHED BY SOURCE AND EXISTS(
	SELECT
		*
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"a_Patient_1"."PersonID" = @PersonID_1 AND "Target"."PersonID" = "a_Patient_1"."PersonID"
) THEN DELETE

BeforeExecute
DisposeTransaction
