BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(2) -- String
SET     @p = 'oh'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	InStr(p."FirstName", :p) - 1 = 1 AND p."PersonID" = 1

