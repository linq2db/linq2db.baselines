BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @str Text(7) -- String
SET     @str = 'John123'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	:str LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(p."FirstName", '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]') || '%' ESCAPE '~'

