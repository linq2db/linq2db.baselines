BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @param Varchar2(4) -- String
SET     @param = 'john'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = :param AND p."PersonID" = 1

