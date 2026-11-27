-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	CASE
		WHEN Position('J' in Substring(p."FirstName", 1)) = 0 THEN 0
		ELSE Position('J' in Substring(p."FirstName", 1))
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

