BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
		) t1("FirstName", "PersonID", "LastName") ON 1=1
WHERE
	p."LastName" = t1."LastName"

