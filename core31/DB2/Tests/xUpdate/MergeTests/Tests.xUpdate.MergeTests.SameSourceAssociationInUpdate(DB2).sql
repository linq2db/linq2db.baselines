﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
BeginTransaction
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

BeforeExecute
RollbackTransaction
