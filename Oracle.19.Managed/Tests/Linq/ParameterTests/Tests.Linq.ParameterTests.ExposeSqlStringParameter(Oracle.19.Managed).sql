BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(3) -- String
SET     @p = 'abc'

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p

