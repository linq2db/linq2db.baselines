-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."PersonID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"Person" x
		LEFT JOIN "Patient" a_Patient ON x."PersonID" = a_Patient."PersonID"
WHERE
	a_Patient."Diagnosis" = 'Hallucination with Paranoid Bugs'' Delirium of Persecution'

