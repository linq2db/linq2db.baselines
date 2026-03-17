-- Firebird.4 Firebird4

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t1"."PersonID" as ID,
		"t1"."FirstName",
		"a_Patient"."Diagnosis" as "Patient_Diagnosis",
		"a_Patient_1"."Diagnosis" as "Patient_Diagnosis_1"
	FROM
		"Person" "t1"
			INNER JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
			LEFT JOIN "Person" "Target_1"
				INNER JOIN "Patient" "a_Patient_1" ON "Target_1"."PersonID" = "a_Patient_1"."PersonID"
			ON "Target_1"."PersonID" = "t1"."PersonID" AND "t1"."FirstName" = 'first 4'
) "Source"
(
	ID,
	"FirstName",
	"Patient_Diagnosis",
	"Patient_Diagnosis_1"
)
ON ("Target"."PersonID" = "Source".ID AND "Source"."FirstName" = 'first 4')

WHEN MATCHED AND "Source"."Patient_Diagnosis" LIKE '%very%' ESCAPE '~' AND
"Source"."Patient_Diagnosis_1" LIKE '%very%' ESCAPE '~' THEN
UPDATE
SET
	"MiddleName" = 'Updated'

-- Firebird.4 Firebird4

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

