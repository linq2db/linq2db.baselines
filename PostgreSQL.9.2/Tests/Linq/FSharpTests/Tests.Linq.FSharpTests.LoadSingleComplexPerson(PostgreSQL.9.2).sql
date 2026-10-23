-- PostgreSQL.9.2 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :p
LIMIT 2

