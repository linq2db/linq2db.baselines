-- PostgreSQL.9.2 PostgreSQL
DECLARE @male Text(1) -- String
SET     @male = 'M'
DECLARE @female Text(1) -- String
SET     @female = 'F'
DECLARE @gender Text(1) -- String
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
	CASE
		WHEN p."PersonID" > 2 THEN :male
		ELSE :female
	END = :gender

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

