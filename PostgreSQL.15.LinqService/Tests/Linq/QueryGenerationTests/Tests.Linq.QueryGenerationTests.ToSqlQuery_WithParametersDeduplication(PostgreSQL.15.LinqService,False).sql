BeforeExecute
-- PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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

