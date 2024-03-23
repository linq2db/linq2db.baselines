BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'LastName'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

