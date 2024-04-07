BeforeExecute
-- PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		t1."PersonID" as "ID",
		"a_Patient"."Diagnosis"
	FROM
		"Person" t1
			LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
) "Source"
(
	"ID",
	"Diagnosis"
)
ON ("Target"."PersonID" = "Source"."ID" AND "Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."Diagnosis" LIKE '%sick%' ESCAPE '~' THEN
INSERT
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	"Source"."Diagnosis",
	'Inserted 2',
	'U'
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
