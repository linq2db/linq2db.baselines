-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet',1,NULL::text,NULL::text,'M'),
			('Doe',2,NULL,NULL,'M')
		) n("FirstName", "ID", "LastName", "MiddleName", "Gender") ON p."PersonID" = n."ID"

