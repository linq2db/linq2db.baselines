BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'
DECLARE @toTest_1 Text(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest_1 ESCAPE '~'

