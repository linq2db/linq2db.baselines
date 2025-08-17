BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Person]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] > 4

