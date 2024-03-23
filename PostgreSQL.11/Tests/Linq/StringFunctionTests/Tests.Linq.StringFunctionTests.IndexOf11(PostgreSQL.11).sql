BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(2) -- String
SET     @p = 'oh'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position(:p in p."FirstName") - 1 = 1 AND p."PersonID" = 1

