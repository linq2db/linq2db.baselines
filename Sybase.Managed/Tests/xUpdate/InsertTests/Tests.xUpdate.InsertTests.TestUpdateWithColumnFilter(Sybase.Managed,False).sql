-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

-- Sybase.Managed Sybase
DECLARE @newName UniVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM [Person]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

