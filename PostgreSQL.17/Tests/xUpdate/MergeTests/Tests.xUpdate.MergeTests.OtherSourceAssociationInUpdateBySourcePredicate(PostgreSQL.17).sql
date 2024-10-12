﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		t1."PersonID" as "source_ID"
	FROM
		"Person" t1
) "Source"
(
	"source_ID"
)
ON ("Target"."PersonID" = "Source"."source_ID" + 10)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient"."Diagnosis"
	FROM
		"Patient" "a_Patient"
	WHERE
		"Target"."PersonID" = "a_Patient"."PersonID"
) LIKE '%very%' ESCAPE '~' THEN UPDATE
SET
	"FirstName" = 'Updated'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
