BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Max(t."PersonID")
FROM
	"Person" t

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > :id

