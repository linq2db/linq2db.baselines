-- PostgreSQL.9.2 PostgreSQL
SELECT
	'p_'::text,
	p."PersonID",
	'X'::text,
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" > 2
UNION ALL
SELECT
	'q_'::text,
	p_1."PersonID",
	'X'::text,
	p_1."FirstName",
	p_1."LastName"
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

