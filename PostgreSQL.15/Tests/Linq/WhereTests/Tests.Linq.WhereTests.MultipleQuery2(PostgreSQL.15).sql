BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."MiddleName" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @str Text(3) -- String
SET     @str = '123'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."MiddleName" = :str

