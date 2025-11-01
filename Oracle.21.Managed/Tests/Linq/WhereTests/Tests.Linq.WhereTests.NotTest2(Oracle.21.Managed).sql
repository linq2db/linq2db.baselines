-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND NOT (p."MiddleName" IS NOT NULL AND p."PersonID" = :n)

