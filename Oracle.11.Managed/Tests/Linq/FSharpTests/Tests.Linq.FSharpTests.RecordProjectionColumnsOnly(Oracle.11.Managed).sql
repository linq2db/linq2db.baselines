-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	'ибн Алёша'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND ROWNUM <= 2

