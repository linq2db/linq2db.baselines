-- SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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

-- SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'

SELECT TOP (1)
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

-- SqlServer.2019
DECLARE @newName NVarChar(4000) -- String
SET     @newName = N'InsertColumnFilter'

DELETE [x]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

