BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"PersonID",
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	GEN_ID("PersonID", 1),
	@FirstName,
	'LastName',
	@Gender
)

