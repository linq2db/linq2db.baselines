BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "Person" "Target"
USING
(
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

WHEN MATCHED AND EXISTS(
	SELECT
		*
	FROM
		"Patient" "a_Patient_1"
	WHERE
		("Source"."Diagnosis" = "a_Patient_1"."Diagnosis" OR "Source"."Diagnosis" IS NULL AND "a_Patient_1"."Diagnosis" IS NULL) AND
		"a_Patient_1"."Diagnosis" LIKE '%very%' ESCAPE '~' AND
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) THEN
UPDATE
SET
	"Target"."LastName" = 'Updated'

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

BeforeExecute
DisposeTransaction
