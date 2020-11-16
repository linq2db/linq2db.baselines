BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @newName NVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = @newName

