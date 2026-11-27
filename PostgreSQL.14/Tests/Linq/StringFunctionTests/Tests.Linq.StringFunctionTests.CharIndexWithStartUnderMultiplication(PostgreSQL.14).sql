-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(p."FirstName", 1)) = 0 THEN 0
		ELSE Position('o' in Substring(p."FirstName", 1))
	END * 2
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

