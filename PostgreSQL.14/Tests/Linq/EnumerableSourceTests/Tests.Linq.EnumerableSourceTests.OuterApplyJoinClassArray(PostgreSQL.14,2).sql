-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		LEFT JOIN (VALUES
			('Janet'), ('Doe')
		) n("LastName") ON p."LastName" = n."LastName"

