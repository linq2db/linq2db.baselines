-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	e."PersonID" as ID,
	e."FirstName",
	e."LastName",
	e."FirstName" || ':' || e."LastName" as "MiddleName"
FROM
	"Person" e
WHERE
	e."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

