-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet'), ('Doe')
		) n("LastName") ON p."LastName" = n."LastName"

