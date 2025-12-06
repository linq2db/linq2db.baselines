-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @pattern Varchar2(6) -- String
SET     @pattern = '%h~%n%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :pattern ESCAPE '~' AND p."PersonID" = 1

