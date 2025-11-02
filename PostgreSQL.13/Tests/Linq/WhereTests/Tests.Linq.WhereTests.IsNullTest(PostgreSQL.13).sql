-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	nm."MiddleName"
FROM
	"Person" nm
WHERE
	nm."MiddleName" IS NOT NULL

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

