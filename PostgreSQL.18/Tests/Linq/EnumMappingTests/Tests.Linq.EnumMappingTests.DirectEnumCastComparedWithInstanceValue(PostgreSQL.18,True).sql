-- PostgreSQL.18 PostgreSQL12
DECLARE @Api Text(1) -- String
SET     @Api = 'F'

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
	END IN (:Api)

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @Api Text(1) -- String
SET     @Api = 'M'

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
	END IN (:Api)

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

