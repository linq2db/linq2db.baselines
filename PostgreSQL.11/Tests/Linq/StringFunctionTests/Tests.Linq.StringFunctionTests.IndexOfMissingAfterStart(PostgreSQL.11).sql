-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN Position('x' in Substring(p."FirstName", 2)) = 0 THEN 0
		ELSE Position('x' in Substring(p."FirstName", 2)) + 1
	END - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN Position('x' in Substring(p."FirstName", 2)) = 0 THEN 0
		ELSE Position('x' in Substring(p."FirstName", 2)) + 1
	END - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN Position('x' in Substring(p."FirstName", Length(p."FirstName") + 1)) = 0
			THEN 0
		ELSE Position('x' in Substring(p."FirstName", Length(p."FirstName") + 1)) + Length(p."FirstName")
	END - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

