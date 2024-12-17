BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender NVarChar(1) -- String
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
	'LastName',
	@Gender
)

