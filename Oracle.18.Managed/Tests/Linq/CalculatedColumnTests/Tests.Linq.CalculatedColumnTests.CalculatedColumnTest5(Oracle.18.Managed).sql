BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	a_PersonDoctor."FirstName"
FROM
	"Doctor" d
		INNER JOIN "Person" a_PersonDoctor ON d."PersonID" = a_PersonDoctor."PersonID"

