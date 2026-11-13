-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @gender Char(1) -- String
SET     @gender = 'F'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	:gender = CASE
		WHEN p."PersonID" > 1000 THEN 'M'
		ELSE p."Gender"
	END

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

