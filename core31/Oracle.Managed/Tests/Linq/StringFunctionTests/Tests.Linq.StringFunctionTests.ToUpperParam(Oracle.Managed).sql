BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @param_1 Varchar2(4) -- String
SET     @param_1 = 'JOHN'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Upper(p."FirstName") = :param_1 AND p."PersonID" = 1

