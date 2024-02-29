﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as "source_ID",
		a_Patient."Diagnosis" as "source_Patient_Diagnosis"
	FROM
		"Person" t1
			INNER JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
) "Source"
ON (EXISTS(
	SELECT
		*
	FROM
		"Patient" a_Patient_1
	WHERE
		Target."PersonID" = "Source"."source_ID" AND
		a_Patient_1."Diagnosis" LIKE '%very%' ESCAPE '~' AND
		"Source"."source_Patient_Diagnosis" LIKE '%sick%' ESCAPE '~' AND
		Target."PersonID" = a_Patient_1."PersonID"
))

WHEN MATCHED THEN
UPDATE
SET
	"MiddleName" = 'R.I.P.'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
