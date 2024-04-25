BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @newName NVarChar(4000) -- String
SET     @newName = N'InsertColumnFilter'

DELETE [x]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

