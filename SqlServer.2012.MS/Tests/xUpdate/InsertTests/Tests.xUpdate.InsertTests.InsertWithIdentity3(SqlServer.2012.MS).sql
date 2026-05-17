-- SqlServer.2012.MS SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- SqlServer.2012.MS SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
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

SELECT SCOPE_IDENTITY()

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'John' AND [p].[LastName] = N'Shepard'

-- SqlServer.2012.MS SqlServer.2012

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

