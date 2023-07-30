BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @param Varchar2(4) -- String
SET     @param = 'test'

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."LastName" = :param

