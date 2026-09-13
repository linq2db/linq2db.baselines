-- PostgreSQL.9.2 PostgreSQL
SELECT
	Length(p."FirstName"),
	'X'::text,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" > 2
UNION ALL
SELECT
	Length(p_1."LastName"),
	'X'::text,
	p_1."FirstName"
FROM
	"Person" p_1
WHERE
	p_1."PersonID" <= 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

