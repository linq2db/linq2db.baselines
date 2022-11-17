BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Max([p].[PersonID])
FROM
	[Person] [p]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

