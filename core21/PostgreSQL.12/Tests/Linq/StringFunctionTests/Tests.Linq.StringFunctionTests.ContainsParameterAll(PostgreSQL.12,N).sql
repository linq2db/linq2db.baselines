BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123N456'
DECLARE @toTest Text(3) -- String
SET     @toTest = '%N%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

