BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @FirstName Text(8) -- String
SET     @FirstName = 'Не ASCII'
DECLARE @LastName Text(9) -- String
SET     @LastName = 'Last Name'
DECLARE @MiddleName Text(3) -- String
SET     @MiddleName = 'Mid'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

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
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis Text(8) -- String
SET     @Diagnosis = 'Negative'

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @patient Integer -- Int32
SET     @patient = 1

MERGE INTO "Person" "Target"
USING (
	SELECT
		t."PersonID" as "source_ID",
		t."FirstName" as "source_FirstName",
		t."LastName" as "source_LastName",
		t."MiddleName" as "source_MiddleName",
		t."Gender" as "source_Gender"
	FROM
		"Person" t
			LEFT JOIN "Patient" "a_Patient" ON t."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = :patient AND "a_Patient"."PersonID" IS NOT NULL
) "Source"
(
	"source_ID",
	"source_FirstName",
	"source_LastName",
	"source_MiddleName",
	"source_Gender"
)
ON ("Target"."PersonID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."source_FirstName",
	"LastName" = "Source"."source_LastName",
	"MiddleName" = "Source"."source_MiddleName",
	"Gender" = "Source"."source_Gender"

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) = :patient AND
(
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) IS NOT NULL THEN DELETE

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @patient Integer -- Int32
SET     @patient = 2

MERGE INTO "Person" "Target"
USING (
	SELECT
		t."PersonID" as "source_ID",
		t."FirstName" as "source_FirstName",
		t."LastName" as "source_LastName",
		t."MiddleName" as "source_MiddleName",
		t."Gender" as "source_Gender"
	FROM
		"Person" t
			LEFT JOIN "Patient" "a_Patient" ON t."PersonID" = "a_Patient"."PersonID"
	WHERE
		"a_Patient"."PersonID" = :patient AND "a_Patient"."PersonID" IS NOT NULL
) "Source"
(
	"source_ID",
	"source_FirstName",
	"source_LastName",
	"source_MiddleName",
	"source_Gender"
)
ON ("Target"."PersonID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."source_FirstName",
	"LastName" = "Source"."source_LastName",
	"MiddleName" = "Source"."source_MiddleName",
	"Gender" = "Source"."source_Gender"

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) = :patient AND
(
	SELECT
		"a_Patient_1"."PersonID"
	FROM
		"Patient" "a_Patient_1"
	WHERE
		"Target"."PersonID" = "a_Patient_1"."PersonID"
) IS NOT NULL THEN DELETE

BeforeExecute
DisposeTransaction
