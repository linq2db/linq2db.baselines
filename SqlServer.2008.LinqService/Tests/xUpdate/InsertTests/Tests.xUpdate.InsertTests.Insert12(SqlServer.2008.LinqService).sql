BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'FirstName'
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	N'LastName',
	@Gender
)

