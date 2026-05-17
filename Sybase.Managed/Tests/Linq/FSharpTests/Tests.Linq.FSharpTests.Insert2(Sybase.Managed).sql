-- Sybase.Managed Sybase

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- Sybase.Managed Sybase
DECLARE @Gender UniVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName UniVarChar(2) -- String
SET     @Name_LastName = 'ln'

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

-- Sybase.Managed Sybase

SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] > 4

