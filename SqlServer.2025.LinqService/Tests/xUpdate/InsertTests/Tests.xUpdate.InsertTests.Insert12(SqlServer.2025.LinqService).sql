BeforeExecute
-- SqlServer.2025 SqlServer.2022
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

