-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName NVarChar(2) -- String
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t]
WHERE
	[t].[PersonID] > 4

