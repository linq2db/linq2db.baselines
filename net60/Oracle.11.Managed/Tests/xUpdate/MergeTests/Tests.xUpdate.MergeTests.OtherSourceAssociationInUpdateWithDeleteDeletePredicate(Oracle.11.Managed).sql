﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as ID,
		t1."FirstName",
		a_Patient."Diagnosis"
	FROM
		"Person" t1
			LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
) "Source"
ON (Target."PersonID" = "Source".ID AND "Source"."FirstName" = 'first 4')

WHEN MATCHED THEN
UPDATE
SET
	Target."LastName" = "Source"."FirstName"

DELETE WHERE
	EXISTS(
	SELECT
		*
	FROM
		"Patient" a_Patient_1
	WHERE
		"Source"."Diagnosis" = 'very sick' AND a_Patient_1."Diagnosis" = 'very sick' AND
		Target."PersonID" = a_Patient_1."PersonID"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

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
RollbackTransaction
