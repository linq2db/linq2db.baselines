-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName UniVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

INSERT INTO [Person]
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

SELECT @@IDENTITY

-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = 'test_inherited_insert'

-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName UniVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = 'test_inherited_insert'

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

