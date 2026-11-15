-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value Char(1) -- String
SET     @value = 'M'

SELECT
	p."PersonID",
	p."Gender"
FROM
	"Person" p
WHERE
	p."Gender" = :value

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

