BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'e'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	InStr(p."LastName", :p, 3) - 1 = 4 AND p."PersonID" = 2

