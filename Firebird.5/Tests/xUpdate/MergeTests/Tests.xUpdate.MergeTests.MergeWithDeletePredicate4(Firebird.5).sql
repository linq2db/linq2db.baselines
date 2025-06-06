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

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(8) -- String
SET     @Diagnosis = 'Negative'

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS VARCHAR(8))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS VARCHAR(8))
	)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @patient Integer -- Int32
SET     @patient = 1

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t"."PersonID" as "source_ID",
		"t"."FirstName" as "source_FirstName",
		"t"."LastName" as "source_LastName",
		"t"."MiddleName" as "source_MiddleName",
		"t"."Gender" as "source_Gender"
	FROM
		"Person" "t"
			LEFT JOIN "Patient" "a_Patient" ON "t"."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = CAST(@patient AS Int)
) "Source"
ON ("Target"."PersonID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."source_FirstName",
	"LastName" = "Source"."source_LastName",
	"MiddleName" = "Source"."source_MiddleName",
	"Gender" = "Source"."source_Gender"

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
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) = CAST(@patient AS Int) THEN DELETE

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @patient Integer -- Int32
SET     @patient = 2

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t"."PersonID" as "source_ID",
		"t"."FirstName" as "source_FirstName",
		"t"."LastName" as "source_LastName",
		"t"."MiddleName" as "source_MiddleName",
		"t"."Gender" as "source_Gender"
	FROM
		"Person" "t"
			LEFT JOIN "Patient" "a_Patient" ON "t"."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = CAST(@patient AS Int)
) "Source"
ON ("Target"."PersonID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."source_FirstName",
	"LastName" = "Source"."source_LastName",
	"MiddleName" = "Source"."source_MiddleName",
	"Gender" = "Source"."source_Gender"

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
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) = CAST(@patient AS Int) THEN DELETE

BeforeExecute
DisposeTransaction
