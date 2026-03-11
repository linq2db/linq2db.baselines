-- PostgreSQL.18 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
EXCEPT
SELECT
	t2."FirstName",
	t2."PersonID",
	t2."LastName",
	t2."MiddleName",
	t2."Gender"
FROM
	"Person" t2

