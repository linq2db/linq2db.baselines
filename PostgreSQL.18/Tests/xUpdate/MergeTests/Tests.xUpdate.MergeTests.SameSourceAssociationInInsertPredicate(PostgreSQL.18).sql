-- PostgreSQL.18 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		t1."PersonID" as "ID",
		"a_Patient"."Diagnosis" as "Patient_Diagnosis"
	FROM
		"Person" t1
			INNER JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
) "Source"
(
	"ID",
	"Patient_Diagnosis"
)
ON ("Target"."PersonID" = "Source"."ID" AND "Target"."FirstName" <> 'first 3')

WHEN NOT MATCHED AND "Source"."Patient_Diagnosis" LIKE '%sick%' ESCAPE '~' THEN
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

-- PostgreSQL.18 PostgreSQL

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

