BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @param Text(4) -- String
SET     @param = 'john'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = :param AND p."PersonID" = 1

