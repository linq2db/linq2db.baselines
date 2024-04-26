BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

