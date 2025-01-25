BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(4) -- String
SET     @p = 'john'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = :p AND p."PersonID" = 1

