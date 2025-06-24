BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "Patient" "Target"
USING (
	SELECT
		"t1"."PersonID" as "source_PersonID",
		"t1"."Diagnosis" as "source_Diagnosis",
		"a_Person"."FirstName" as "source_Person_FirstName",
		"a_Person_1"."FirstName" as "target_Person_FirstName"
	FROM
		"Patient" "t1"
			LEFT JOIN "Person" "a_Person" ON "t1"."PersonID" = "a_Person"."PersonID"
			LEFT JOIN "Patient" "Target_1" ON "Target_1"."PersonID" = "t1"."PersonID" AND "t1"."Diagnosis" LIKE '%very%' ESCAPE '~'
			LEFT JOIN "Person" "a_Person_1" ON "Target_1"."PersonID" = "a_Person_1"."PersonID"
) "Source"
(
	"source_PersonID",
	"source_Diagnosis",
	"source_Person_FirstName",
	"target_Person_FirstName"
)
ON ("Target"."PersonID" = "Source"."source_PersonID" AND
"Source"."source_Diagnosis" LIKE '%very%' ESCAPE '~')
WHEN MATCHED AND "Source"."source_Person_FirstName" = 'first 4' AND
"Source"."target_Person_FirstName" = 'first 4' THEN DELETE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"
ORDER BY
	"t1"."PersonID"

BeforeExecute
DisposeTransaction
