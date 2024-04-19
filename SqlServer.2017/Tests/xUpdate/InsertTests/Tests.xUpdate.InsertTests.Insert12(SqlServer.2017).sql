BeforeExecute
-- SqlServer.2017
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'FirstName'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'LastName'
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
	@LastName,
	@Gender
)

