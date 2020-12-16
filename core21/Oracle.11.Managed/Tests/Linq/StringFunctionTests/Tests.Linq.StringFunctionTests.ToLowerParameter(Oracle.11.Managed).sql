BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param_1 Varchar2(4) -- String
SET     @param_1 = 'john'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = :param_1 AND p."PersonID" = 1

