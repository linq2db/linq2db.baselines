-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	l."PersonID",
	r."PersonID",
	r."Gender"
FROM
	"Person" l
		INNER JOIN "Person" r ON l."Gender" = r."Gender"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

