BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	e."FirstName",
	CASE
		WHEN a_Person."PersonID" IS NOT NULL AND a_Person."LastName" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	a_Person."LastName"
FROM
	"Person" e
		LEFT JOIN "Patient" a_Patient ON e."PersonID" = a_Patient."PersonID"
		LEFT JOIN "Person" a_Person ON a_Patient."PersonID" = a_Person."PersonID"

