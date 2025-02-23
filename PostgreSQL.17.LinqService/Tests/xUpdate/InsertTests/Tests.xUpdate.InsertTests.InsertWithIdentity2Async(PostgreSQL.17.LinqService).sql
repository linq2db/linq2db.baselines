BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

