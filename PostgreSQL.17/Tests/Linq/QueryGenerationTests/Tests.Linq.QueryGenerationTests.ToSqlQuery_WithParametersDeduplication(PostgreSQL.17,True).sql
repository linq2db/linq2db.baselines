-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = 'John' OR p."LastName" = 'John'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @firstName Text(4) -- String
SET     @firstName = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = :firstName OR p."LastName" = :firstName
LIMIT 2

