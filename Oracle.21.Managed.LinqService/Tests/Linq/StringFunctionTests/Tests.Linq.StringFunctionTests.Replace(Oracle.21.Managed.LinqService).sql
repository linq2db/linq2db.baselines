BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	REPLACE(p."FirstName", 'hn', 'lie') = 'Jolie' AND p."PersonID" = 1

