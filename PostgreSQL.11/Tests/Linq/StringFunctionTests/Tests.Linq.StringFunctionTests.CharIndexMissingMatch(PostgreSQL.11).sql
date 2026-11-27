-- PostgreSQL.11 PostgreSQL
SELECT
	Position('o' in p."FirstName") * 2
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

