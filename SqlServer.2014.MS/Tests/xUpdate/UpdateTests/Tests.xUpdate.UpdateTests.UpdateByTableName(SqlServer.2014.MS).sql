-- SqlServer.2014.MS SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [xxPerson]
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

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

-- SqlServer.2014.MS SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'None'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[xxPerson]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[xxPerson].[PersonID] = @ID

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

