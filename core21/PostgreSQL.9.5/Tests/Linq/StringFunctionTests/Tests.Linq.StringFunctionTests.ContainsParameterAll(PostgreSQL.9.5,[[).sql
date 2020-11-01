BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(8) -- String
SET     @s = '123[[456'
DECLARE @toTest Text(6) -- String
SET     @toTest = '%~[~[%'

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

