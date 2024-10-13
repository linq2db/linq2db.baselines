BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = 'e'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position(:p in Substring(p."LastName", 3, Length(p."LastName") - 3)) + 1 = 4 AND
	p."PersonID" = 2

