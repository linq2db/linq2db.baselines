BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

