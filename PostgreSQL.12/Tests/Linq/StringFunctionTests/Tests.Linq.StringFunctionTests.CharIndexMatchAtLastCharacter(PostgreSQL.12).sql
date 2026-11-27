-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN Position('n' in Substring(p."FirstName", 2)) = 0 THEN 0
		ELSE Position('n' in Substring(p."FirstName", 2)) + 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

