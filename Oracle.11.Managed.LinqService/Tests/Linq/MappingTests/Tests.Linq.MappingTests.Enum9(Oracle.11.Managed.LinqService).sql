BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND p."Gender" = 'M'

