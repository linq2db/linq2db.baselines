BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			(1), (2)
		) n("ID") ON p."PersonID" = n."ID"

