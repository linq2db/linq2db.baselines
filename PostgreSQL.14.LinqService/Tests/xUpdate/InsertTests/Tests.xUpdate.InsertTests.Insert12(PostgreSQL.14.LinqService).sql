BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
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

