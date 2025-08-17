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
DECLARE @nullableGender UniChar(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	[Person]
SET
	[Gender] = @nullableGender
WHERE
	[Person].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

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

