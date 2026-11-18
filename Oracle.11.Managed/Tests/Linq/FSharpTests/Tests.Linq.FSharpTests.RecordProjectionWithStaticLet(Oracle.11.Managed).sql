-- Oracle.11.Managed Oracle11
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."LastName" = 'Pupkin' AND p."FirstName" = 'John' AND
	ROWNUM <= 2

