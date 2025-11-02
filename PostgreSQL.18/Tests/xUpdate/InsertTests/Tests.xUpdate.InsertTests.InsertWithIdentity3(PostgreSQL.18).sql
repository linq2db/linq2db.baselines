-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

-- PostgreSQL.18 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Text(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:Gender
)
RETURNING 
	"PersonID"

-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

