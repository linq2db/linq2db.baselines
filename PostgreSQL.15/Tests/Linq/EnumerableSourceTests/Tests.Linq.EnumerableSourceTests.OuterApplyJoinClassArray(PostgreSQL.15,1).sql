BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		LEFT JOIN LATERAL (VALUES
			(1,'Janet',p."FirstName"), (2,'Doe',NULL)
		) n("PersonID", "LastName", "FirstName") ON p."LastName" = n."LastName"

