BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(1,'Janet',p."FirstName"), (2,'Doe',NULL)
		) n("PersonID", "LastName", "FirstName") ON p."LastName" = n."LastName"

