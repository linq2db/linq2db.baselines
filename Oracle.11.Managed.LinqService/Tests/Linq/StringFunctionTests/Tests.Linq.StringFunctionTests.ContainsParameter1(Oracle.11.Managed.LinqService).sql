BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @str Varchar2(4) -- String
SET     @str = '%oh%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :str ESCAPE '~' AND p."PersonID" = 1

