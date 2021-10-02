BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
		) t1("ID", "Name", "Sub") ON 1=1
WHERE
	p."LastName" = t1."Name"

