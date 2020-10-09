BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = NULL
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
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT TOP 2 
	[p2].[PersonID], 
	[p2].[Gender], 
	[p2].[FirstName], 
	[p2].[MiddleName], 
	[p2].[LastName]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] > @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

