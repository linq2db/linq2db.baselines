-- PostgreSQL.15 PostgreSQL12
DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

