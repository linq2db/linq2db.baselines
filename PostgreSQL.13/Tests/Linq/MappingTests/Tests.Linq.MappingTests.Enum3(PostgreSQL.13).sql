-- PostgreSQL.13 PostgreSQL
DECLARE @fm Char(1) -- String
SET     @fm = 'F'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" <> :fm

