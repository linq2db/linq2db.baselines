BeforeExecute
-- PostgreSQL.15 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Max(t1."PersonID")
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 12
DECLARE @FirstName Text(10) -- String
SET     @FirstName = 'Inserted 1'
DECLARE @LastName Text(10) -- String
SET     @LastName = 'Inserted 2'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

MERGE INTO "Person" "Target"
USING (
	SELECT
		t1."PersonID" as "source_ID",
		"a_Patient"."Diagnosis" as "source_Patient_Diagnosis"
	FROM
		"Person" t1
			INNER JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
) "Source"
(
	"source_ID",
	"source_Patient_Diagnosis"
)
ON ("Target"."PersonID" = "Source"."source_ID" AND "Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."source_Patient_Diagnosis" LIKE '%sick%' ESCAPE '~' THEN
INSERT
(
	"PersonID",
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:ID,
	:FirstName,
	:LastName,
	:Gender
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
