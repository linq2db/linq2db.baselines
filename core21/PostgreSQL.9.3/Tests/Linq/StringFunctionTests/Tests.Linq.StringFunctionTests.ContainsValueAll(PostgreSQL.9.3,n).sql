BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%n%' ESCAPE '~'

