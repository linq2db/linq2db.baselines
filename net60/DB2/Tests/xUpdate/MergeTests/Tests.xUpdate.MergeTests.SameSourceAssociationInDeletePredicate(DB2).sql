BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "Patient" "Target"
USING
(
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
ON ("Target"."PersonID" = "Source"."PersonID" AND "Source"."Diagnosis" LIKE '%very%' ESCAPE '~')
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
