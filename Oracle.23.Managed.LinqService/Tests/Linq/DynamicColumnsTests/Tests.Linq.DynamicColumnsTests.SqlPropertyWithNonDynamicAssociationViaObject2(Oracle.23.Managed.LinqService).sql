BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	a_Patient."Diagnosis"
FROM
	"Person" x
		LEFT JOIN "Patient" a_Patient ON x."PersonID" = a_Patient."PersonID"

