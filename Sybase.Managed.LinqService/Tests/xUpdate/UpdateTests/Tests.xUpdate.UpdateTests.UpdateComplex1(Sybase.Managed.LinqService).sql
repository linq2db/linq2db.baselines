BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName UniVarChar(5) -- String
SET     @Name_LastName = 'Empty'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName UniVarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[Gender] = @Gender,
	[FirstName] = @Name_FirstName,
	[MiddleName] = @Name_MiddleName,
	[LastName] = @Name_LastName
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

