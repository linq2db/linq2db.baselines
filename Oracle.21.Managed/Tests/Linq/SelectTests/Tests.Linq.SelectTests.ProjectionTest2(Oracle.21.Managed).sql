-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	a_Patient."PersonID",
	a_Patient."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" a_Patient ON p."PersonID" = a_Patient."PersonID"

