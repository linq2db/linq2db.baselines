﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as "source_ID",
		t1."FirstName" as "source_FirstName",
		a_Patient."Diagnosis" as "source_Patient_Diagnosis",
		a_Patient_1."Diagnosis" as "target_Patient_Diagnosis"
	FROM
		"Person" t1
			INNER JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
			LEFT JOIN "Person" Target_1
				INNER JOIN "Patient" a_Patient_1 ON Target_1."PersonID" = a_Patient_1."PersonID"
			ON Target_1."PersonID" = t1."PersonID" AND Target_1."PersonID" IS NOT NULL AND t1."FirstName" = 'first 4'
) "Source"
ON (Target."PersonID" = "Source"."source_ID" AND "Source"."source_FirstName" = 'first 4')

WHEN MATCHED THEN
UPDATE
SET
	"MiddleName" = 'Updated'
WHERE
	"Source"."source_Patient_Diagnosis" LIKE '%very%' ESCAPE '~' AND
"Source"."target_Patient_Diagnosis" LIKE '%very%' ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"

BeforeExecute
DisposeTransaction
