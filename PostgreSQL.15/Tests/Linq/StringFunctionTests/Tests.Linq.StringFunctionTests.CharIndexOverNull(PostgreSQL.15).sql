-- PostgreSQL.15 PostgreSQL12
SELECT
	Position('o' in p."MiddleName")
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	Position(p."MiddleName" in p."FirstName")
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	Position(CASE
		WHEN p."MiddleName" IS NULL THEN NULL
		ELSE 'o'
	END in p."FirstName")
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	Position('o' in p."MiddleName") = 0
ORDER BY
	p."PersonID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

