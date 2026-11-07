-- PostgreSQL.9.5 PostgreSQL
SELECT
	p."PersonID"
FROM
	"Person" p
UNION
SELECT
	p_1."PersonID" + 100
FROM
	"Person" p_1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

