BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase
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
	[t1].[Gender] = @Gender,
	[t1].[FirstName] = @Name_FirstName,
	[t1].[MiddleName] = @Name_MiddleName,
	[t1].[LastName] = @Name_LastName
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

