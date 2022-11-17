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
		a_Patient."Diagnosis"
	FROM
		"Person" t1
			LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
) "Source"
ON (Target."PersonID" = "Source".ID AND Target."FirstName" <> 'first 3')

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Inserted 1',
	'Inserted 2',
	'M'
)
 WHERE "Source"."Diagnosis" LIKE '%sick%' ESCAPE '~'

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
