-- PostgreSQL.11 PostgreSQL
DECLARE @api Text(1) -- String
SET     @api = 'F'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	:api IN (p."Gender")

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

