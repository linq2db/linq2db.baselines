﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(10) -- String
SET     @FirstName = 'Inserted 1'
DECLARE @LastName Varchar2(10) -- String
SET     @LastName = 'Inserted 2'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as "source_ID",
		a_Patient."Diagnosis" as "source_Patient_Diagnosis"
	FROM
		"Person" t1
			INNER JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
) "Source"
ON (Target."PersonID" = "Source"."source_ID" AND Target."FirstName" <> 'first 3')

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:Gender
)
 WHERE "Source"."source_Patient_Diagnosis" LIKE '%sick%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
