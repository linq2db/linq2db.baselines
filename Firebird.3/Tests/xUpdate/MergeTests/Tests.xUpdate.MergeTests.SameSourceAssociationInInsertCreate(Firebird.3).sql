﻿BeforeExecute
-- Firebird.3 Firebird3

SET GENERATOR "PersonID" TO 4

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.3 Firebird3

MERGE INTO "Person" "Target"
USING (
	SELECT
		"t1"."PersonID" as "source_ID",
		"a_Patient"."Diagnosis" as "source_Patient_Diagnosis"
	FROM
		"Person" "t1"
			INNER JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
) "Source"
(
	"source_ID",
	"source_Patient_Diagnosis"
)
ON ("Target"."PersonID" = "Source"."source_ID" AND "Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."source_Patient_Diagnosis" LIKE '%sick%' ESCAPE '~' THEN
INSERT
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	"Source"."source_Patient_Diagnosis",
	'Inserted 2',
	'U'
)

BeforeExecute
-- Firebird.3 Firebird3

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
