-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @nm Text(4) -- String
SET     @nm = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" IN (:nm)

