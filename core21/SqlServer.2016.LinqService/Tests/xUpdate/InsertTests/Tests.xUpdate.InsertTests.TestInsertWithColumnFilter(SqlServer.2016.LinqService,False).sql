BeforeExecute
-- SqlServer.2016 SqlServer.2012
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

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertColumnFilter'

SELECT TOP (@take)
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
-- SqlServer.2016 SqlServer.2012
DECLARE @newName NVarChar(4000) -- String
SET     @newName = N'InsertColumnFilter'

DELETE [x]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

