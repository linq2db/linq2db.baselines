BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @str_1 Varchar2(6) -- String
SET     @str_1 = '%o~%h%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :str_1 ESCAPE '~' AND p."PersonID" = 1

