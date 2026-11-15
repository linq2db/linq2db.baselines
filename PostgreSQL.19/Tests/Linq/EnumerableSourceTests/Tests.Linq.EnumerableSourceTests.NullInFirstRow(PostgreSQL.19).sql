-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id",
	r."Value",
	r."Name"
FROM
	"Person" p
		INNER JOIN (VALUES
			(1,NULL,'a'), (2,2,NULL)
		) r("Id", "Value", "Name") ON p."PersonID" = r."Id"
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

