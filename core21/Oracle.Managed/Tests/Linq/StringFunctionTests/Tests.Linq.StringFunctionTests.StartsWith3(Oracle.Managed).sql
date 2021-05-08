BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @str_1 Varchar2(7) -- String
SET     @str_1 = 'john123'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	:str_1 LIKE Replace(Replace(Replace(Lower(p."FirstName"), '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

