BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Replace(p."FirstName", 'hn', 'lie') = 'Jolie' AND p."PersonID" = 1

