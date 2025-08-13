BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as ID,
		t1."FirstName",
		a_Patient."Diagnosis" as "Patient_Diagnosis",
		a_Patient_1."Diagnosis" as "Patient_Diagnosis_1"
	FROM
		"Person" t1
			INNER JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
			LEFT JOIN "Person" Target_1
				INNER JOIN "Patient" a_Patient_1 ON Target_1."PersonID" = a_Patient_1."PersonID"
			ON Target_1."PersonID" = t1."PersonID" AND t1."FirstName" = 'first 4'
) "Source"
ON (Target."PersonID" = "Source".ID AND "Source"."FirstName" = 'first 4')

WHEN MATCHED THEN
UPDATE
SET
	"MiddleName" = 'first ' || "Source"."Patient_Diagnosis",
	"LastName" = 'last ' || "Source"."Patient_Diagnosis_1"

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
DisposeTransaction
