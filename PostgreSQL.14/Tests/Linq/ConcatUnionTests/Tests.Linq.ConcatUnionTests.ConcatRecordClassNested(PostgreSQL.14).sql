-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."PersonID",
	p_1."LastName",
	p_1."FirstName"
FROM
	"Person" p_1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

