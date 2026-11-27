-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN CASE
			WHEN Position('x' in Substring(p."FirstName", 2)) = 0 THEN 0
			ELSE Position('x' in Substring(p."FirstName", 2)) + 1
		END = 0
			THEN -1
		ELSE Length(p."FirstName") - Position('x' in Reverse(Substring(p."FirstName", 2, Length(p."FirstName") - 1)))
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

