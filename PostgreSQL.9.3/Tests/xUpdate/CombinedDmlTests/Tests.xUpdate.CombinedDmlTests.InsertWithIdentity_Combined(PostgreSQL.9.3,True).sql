-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)
RETURNING 
	"PersonID"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" = 'John' AND p."LastName" = 'Shepard'
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

