BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(1,'Janet',p."LastName"), (1,'Doe',p."LastName")
		) n("ID", "Name", "Sub") ON p."LastName" = n."Name"

