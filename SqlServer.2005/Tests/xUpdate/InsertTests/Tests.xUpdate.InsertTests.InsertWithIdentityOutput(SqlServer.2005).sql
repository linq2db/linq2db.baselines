-- SqlServer.2005

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John0'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

DECLARE @PersonOutput TABLE ([PersonID] Int)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
OUTPUT [INSERTED].[PersonID]
INTO @PersonOutput
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

SELECT [PersonID] FROM @PersonOutput

-- SqlServer.2005
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John0'

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p AND [p].[LastName] = N'Shepard'

-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John1'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

DECLARE @PersonOutput TABLE ([PersonID] Int)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
OUTPUT [INSERTED].[PersonID]
INTO @PersonOutput
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

SELECT [PersonID] FROM @PersonOutput

-- SqlServer.2005
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John1'

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p AND [p].[LastName] = N'Shepard'

-- SqlServer.2005

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

