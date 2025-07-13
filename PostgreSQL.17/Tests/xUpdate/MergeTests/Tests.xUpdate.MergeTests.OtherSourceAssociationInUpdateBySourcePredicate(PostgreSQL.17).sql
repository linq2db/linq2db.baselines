BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "Person" "Target"
USING (
	SELECT
		t1."PersonID" as "ID"
	FROM
		"Person" t1
) "Source"
(
	"ID"
)
ON ("Target"."PersonID" = "Source"."ID" + 10)

WHEN NOT MATCHED BY SOURCE AND ((
	SELECT
		CASE
			WHEN "a_Patient"."Diagnosis" LIKE '%very%' ESCAPE '~' THEN True
			ELSE False
		END
	FROM
		"Patient" "a_Patient"
	WHERE
		"Target"."PersonID" = "a_Patient"."PersonID"
)) THEN UPDATE
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
