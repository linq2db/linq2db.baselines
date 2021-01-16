BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Text(1) -- String
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	'LastName',
	:Gender
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > :id

