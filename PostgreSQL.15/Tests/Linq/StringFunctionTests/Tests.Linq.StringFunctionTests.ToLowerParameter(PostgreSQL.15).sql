BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @param Text(4) -- String
SET     @param = 'JOHN'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = Lower(:param) AND p."PersonID" = 1

