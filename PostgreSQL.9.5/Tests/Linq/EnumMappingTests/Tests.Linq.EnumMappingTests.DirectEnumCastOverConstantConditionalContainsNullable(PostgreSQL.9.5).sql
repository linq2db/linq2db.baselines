-- PostgreSQL.9.5 PostgreSQL
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN p."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END IN ('F')

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

