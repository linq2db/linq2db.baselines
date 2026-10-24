-- PostgreSQL.12 PostgreSQL12
SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" > 2
UNION ALL
SELECT
	p_1."LastName"
FROM
	"Person" p_1
WHERE
	p_1."PersonID" <= 2

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

