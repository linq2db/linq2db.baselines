BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(4) -- String
SET     @p = 'JOHN'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Upper(p."FirstName") = :p AND p."PersonID" = 1

