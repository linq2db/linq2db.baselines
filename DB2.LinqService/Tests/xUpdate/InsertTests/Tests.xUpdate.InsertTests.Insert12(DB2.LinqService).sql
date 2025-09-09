BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

