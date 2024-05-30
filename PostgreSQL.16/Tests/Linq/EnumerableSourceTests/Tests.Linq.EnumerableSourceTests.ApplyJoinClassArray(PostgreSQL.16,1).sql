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
			(p."FirstName",1,'Janet'), (NULL,2,'Doe')
		) n("FirstName", "PersonID", "LastName") ON p."LastName" = n."LastName"

