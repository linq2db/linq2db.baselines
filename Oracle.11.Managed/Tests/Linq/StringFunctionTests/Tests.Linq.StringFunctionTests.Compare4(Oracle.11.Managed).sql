BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(Substr(p."FirstName", 2, 2)) = Lower(Substr('Joh', 2, 2)) AND
	p."PersonID" = 1

