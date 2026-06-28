-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	nm."FirstName"
FROM
	"Person" nm
WHERE
	Length(nm."FirstName") <> 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

