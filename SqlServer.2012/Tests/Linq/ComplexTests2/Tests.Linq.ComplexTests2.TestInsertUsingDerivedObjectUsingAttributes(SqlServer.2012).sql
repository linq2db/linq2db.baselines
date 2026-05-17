-- SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'test_inherited_insert'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'U'

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

SELECT SCOPE_IDENTITY()

-- SqlServer.2012

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = N'test_inherited_insert'

-- SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'test_inherited_insert'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'test'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'U'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

-- SqlServer.2012

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = N'test_inherited_insert'

-- SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

