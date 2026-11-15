-- PostgreSQL.12 PostgreSQL12
DECLARE @value Char(1) -- String
SET     @value = 'M'

SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" = :value

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

