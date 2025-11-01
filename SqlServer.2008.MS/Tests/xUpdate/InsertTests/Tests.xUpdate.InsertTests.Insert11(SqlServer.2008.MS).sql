-- SqlServer.2008.MS SqlServer.2008

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @Name_FirstName NVarChar(4000) -- String
SET     @Name_FirstName = N'fn'
DECLARE @Name_MiddleName NVarChar(4000) -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(4000) -- String
SET     @Name_LastName = N'ln'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 4

SELECT TOP (2)
	[p2].[PersonID],
	[p2].[Gender],
	[p2].[FirstName],
	[p2].[MiddleName],
	[p2].[LastName]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] > @id OR [p2].[PersonID] = 0

